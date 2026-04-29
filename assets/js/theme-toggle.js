// SPDX-FileCopyrightText: 2026 Digg - Agency for Digital Government
// SPDX-License-Identifier: CC0-1.0
//
// Single-click light/dark theme toggle, paired with our local
// override of Hextra's theme-toggle.html partial.
//
// Hextra's head-loaded theme.js exposes a global `setTheme(theme)`
// function and reads/writes the localStorage key `color-theme`.
// We just read the current state from <html>, flip it, persist,
// and call setTheme so Hextra updates the DOM.

document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('.hx-theme-toggle-simple').forEach(function (btn) {
    btn.addEventListener('click', function () {
      var current = document.documentElement.classList.contains('dark') ? 'dark' : 'light';
      var next = current === 'dark' ? 'light' : 'dark';
      try { localStorage.setItem('color-theme', next); } catch (e) {}
      if (typeof window.setTheme === 'function') {
        window.setTheme(next);
      } else {
        // Fallback if Hextra's setTheme is not available.
        document.documentElement.classList.remove('light', 'dark');
        document.documentElement.classList.add(next);
        document.documentElement.style.colorScheme = next;
      }
    });
  });
});
