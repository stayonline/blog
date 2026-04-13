document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('.collapsed h2').forEach(function (h2) {
    h2.addEventListener('click', function () {
      h2.closest('.collapsed').classList.toggle('expanded');
    });
  });

  function expandFromHash() {
    if (window.location.hash) {
      const target = document.querySelector(window.location.hash);
      if (target && target.classList.contains('collapsed')) {
        target.classList.add('expanded');
      }
    }
  }

  expandFromHash();
  window.addEventListener('hashchange', expandFromHash);
});
