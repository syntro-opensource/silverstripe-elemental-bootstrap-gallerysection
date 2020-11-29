import PhotoSwipeUI_Default from 'photoswipe/dist/photoswipe-ui-default';
import PhotoSwipe from 'photoswipe';

const pswpElement = document.querySelectorAll('.pswp')[0];
const galleryImageClass = '.gallery-section__image-link';

const Images = document.querySelectorAll(galleryImageClass);

for (let i = 0; i < Images.length; i++) {
  Images[i].onclick = (event) => {
    event.preventDefault();
    const { href } = event.currentTarget;
    const {
      width,
      height,
      placeholder,
      caption,
    } = event.currentTarget.dataset;
    const items = [{
      src: href,
      msrc: placeholder,
      w: width,
      h: height,
      title: caption,
    }];
    const options = {
      index: 0,
      closeOnScroll: false,
    };
    const gallery = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default, items, options);
    gallery.init();
  };
}
