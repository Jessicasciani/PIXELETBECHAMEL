import Typed from 'typed.js';
import SweetScroll from 'sweet-scroll';


function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["PIXEL ET BÉCHAMEL"],
    typeSpeed: 100,
    loop: false
  });
}

export { loadDynamicBannerText };



function loadSweetScroll() {
  document.addEventListener('DOMContentLoaded', () => {
    const sweetScroll = new SweetScroll({ /* some options */ });
  }, false);
}

export { loadSweetScroll };
