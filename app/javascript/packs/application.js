require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initMapbox } from '../plugins/init_mapbox';
import { initFlatpicker } from '../plugins/flatpickr';

document.addEventListener('turbolinks:load', () => {
  initUpdateNavbarOnScroll();
  initMapbox();
  initFlatpicker();
});
