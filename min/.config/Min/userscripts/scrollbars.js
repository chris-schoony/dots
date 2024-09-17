// ==UserScript==
// @name scrollbar
// @match *
// @run-at document-start
// ==/UserScript==

const styles = document.createElement('style');
styles.textContent = `
  ::-webkit-scrollbar {
    width: 4px;
  }

  ::-webkit-scrollbar-thumb {
    background: #585b70;
  }

  ::-webkit-scrollbar-thumb:hover {
    background: #1e1e2e;
  }
`;
document.head.appendChild(styles);
