#!/bin/bash

POSTS_DIR="_posts"
TAG_DIR="tags"
LAYOUT="tag"
PERMALINK_BASE="/tags"

mkdir -p "$TAG_DIR"
> .all_tags.tmp

# Extract tags from front matter
for FILE in "$POSTS_DIR"/*; do
  in_frontmatter=false
  in_tags=false

  while IFS= read -r line; do
    # Detect start/end of front matter
    if [[ "$line" == "---" ]]; then
      if $in_frontmatter; then
        break
      else
        in_frontmatter=true
        continue
      fi
    fi

    # Parse tags
    if $in_frontmatter; then
      if [[ "$line" =~ ^tags: ]]; then
        in_tags=true
        continue
      fi

      if $in_tags; then
        if [[ "$line" =~ ^[[:space:]]*-[[:space:]]*(.+)$ ]]; then
          tag="${BASH_REMATCH[1]}"
          echo "$tag" >> .all_tags.tmp
        elif [[ ! "$line" =~ ^[[:space:]]*- ]]; then
          in_tags=false
        fi
      fi
    fi
  done < "$FILE"
done

# Generate unique, slugified tag pages
sort -u .all_tags.tmp | while read -r TAG; do
  SLUG=$(echo "$TAG" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g' | sed -E 's/^-+|-+$//g')
  FILE="$TAG_DIR/$SLUG.md"
  cat > "$FILE" <<EOF
---
layout: $LAYOUT
tag: $TAG
permalink: $PERMALINK_BASE/$SLUG/
---
EOF
  echo "Generated: $FILE"
done

rm .all_tags.tmp