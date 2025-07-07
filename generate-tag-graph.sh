#!/bin/bash
POSTS_DIR="_posts"
OUTPUT_FILE="assets/data/tags-graph.json"
mkdir -p "$(dirname "$OUTPUT_FILE")"

# ---------- helper ----------
derive_permalink() {                # _posts/2025-05-27-my-title.md → /2025/05/27/my-title/
  local fname=$(basename "$1" .md)
  if [[ $fname =~ ^([0-9]{4})-([0-9]{2})-([0-9]{2})-(.*)$ ]]; then
    local title="${BASH_REMATCH[4]}"
    # Replace spaces and special chars with hyphens, then clean up multiple hyphens
    title=$(echo "$title" | sed 's/[^a-zA-Z0-9-]/-/g' | sed 's/-\+/-/g' | sed 's/^-\|-$//g')
    echo "/${BASH_REMATCH[1]}/${BASH_REMATCH[2]}/${BASH_REMATCH[3]}/${title}/"
  else
    # non-dated content → /my-title/
    # Replace spaces and special chars with hyphens, then clean up multiple hyphens
    local clean_fname=$(echo "$fname" | sed 's/[^a-zA-Z0-9-]/-/g' | sed 's/-\+/-/g' | sed 's/^-\|-$//g')
    echo "/${clean_fname}/"
  fi
}
# -----------------------------

echo '{ "nodes": [' >"$OUTPUT_FILE"

declare -A tag_map written_nodes
first_node=true

for post_file in "$POSTS_DIR"/*.md; do
  title="" permalink="" tags=()
  inside_frontmatter=false inside_tags=false

  # -------- read front-matter --------
  while IFS= read -r line || [ -n "$line" ]; do
    [[ "$line" == "---" ]] && {   # toggle front-matter
      $inside_frontmatter && break
      inside_frontmatter=true
      continue
    }
    $inside_frontmatter || continue

    [[ $line =~ ^title:\ *(.*) ]]     && { title="${BASH_REMATCH[1]//\"/}"; continue; }
    [[ $line =~ ^permalink:\ *(.*) ]] && { permalink="${BASH_REMATCH[1]//\"/}"; continue; }

    [[ $line =~ ^tags:\ *$ ]] && { inside_tags=true; continue; }
    if $inside_tags; then
      [[ $line =~ ^[[:space:]]*-\ +(.*) ]] && { tags+=("${BASH_REMATCH[1]}"); continue; }
      [[ ! $line =~ ^[[:space:]]*-\  ]] && inside_tags=false
    fi
  done <"$post_file"

  # -------- fallback permalink --------
  [[ -z $permalink ]] && permalink=$(derive_permalink "$post_file")
  [[ -z $title || -z $permalink ]] && continue   # still nothing? skip

  post_id="post-${title// /-}"
  $first_node || echo ',' >>"$OUTPUT_FILE"; first_node=false
  printf '  { "id": "%s", "label": "%s", "type": "post", "url": "%s" }' \
         "$post_id" "$title" "$permalink" >>"$OUTPUT_FILE"
  written_nodes["$post_id"]=1

  for tag in "${tags[@]}"; do
    tag_map["$tag"]+="$title"$'\n'
  done
done

# -------- tag nodes --------
for tag in "${!tag_map[@]}"; do
  tag_id="tag-${tag// /-}"
  echo ',' >>"$OUTPUT_FILE"
  printf '  { "id": "%s", "label": "%s", "type": "tag", "url": "/tags/%s/" }' \
         "$tag_id" "$tag" "${tag// /-}" >>"$OUTPUT_FILE"
done

echo '],' >>"$OUTPUT_FILE"

# -------- links --------
echo ' "links": [' >>"$OUTPUT_FILE"
first_link=true
for tag in "${!tag_map[@]}"; do
  tag_id="tag-${tag// /-}"
  while IFS= read -r title; do
    [[ -z $title ]] && continue
    post_id="post-${title// /-}"
    $first_link || echo ',' >>"$OUTPUT_FILE"; first_link=false
    printf '  { "source": "%s", "target": "%s" }' "$tag_id" "$post_id" >>"$OUTPUT_FILE"
  done <<<"${tag_map[$tag]}"
done
echo ' ] }' >>"$OUTPUT_FILE"

echo "✅ Graph data written to $OUTPUT_FILE"
