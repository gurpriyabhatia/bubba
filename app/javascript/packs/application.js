import "bootstrap";
import "flatpickr/dist/flatpickr.min.css";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from './init_mapbox.js';
import { initMapboxNannies } from './init_mapboxnannies.js';
import { initAutocomplete } from './init_autocomplete.js';
import flatpickr from "flatpickr";

initMapbox();
initMapboxNannies();
initAutocomplete();

flatpickr("#nanny_booking_date", {
  "enableTime": true,
  "disableMobile": true
});


document.querySelector(".navbar-toggler").addEventListener("click", () => {
  document.getElementById("mySidenav").style.width = "100%";
});

document.querySelector(".closebtn").addEventListener("click", () => {
  document.getElementById("mySidenav").style.width = "0";
});
