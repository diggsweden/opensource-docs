// SPDX-FileCopyrightText: 2026 Digg - Agency for Digital Government
// SPDX-License-Identifier: CC0-1.0
//
// Make Markdown task-list checkboxes (`- [ ]` / `- [x]`) clickable, and
// give each one an aria-label derived from its surrounding list-item text
// so screen readers announce the actual task instead of just "checkbox".
// Goldmark renders task-list checkboxes with `disabled` per CommonMark spec.

document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('main li > input[type="checkbox"]').forEach(function (box) {
    box.removeAttribute('disabled');
    box.style.cursor = 'pointer';

    if (!box.hasAttribute('aria-label')) {
      var li = box.closest('li');
      if (li) {
        var label = li.textContent.replace(/\s+/g, ' ').trim();
        if (label.length > 240) label = label.slice(0, 237) + '…';
        if (label) box.setAttribute('aria-label', label);
      }
    }
  });
});
