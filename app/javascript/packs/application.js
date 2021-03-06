//= require jquery
import "bootstrap";
import { scroll } from "./box_scroll";
scroll();

import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
flatpickr(".datepicker", {dateFormat: "Y-m-d"});
flatpickr(".datepicker2", {enableTime: true, dateFormat: "Y-m-d H:i"});

import { initSelect2 } from '../plugins/init_select2';
initSelect2();

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

import { newRequest } from './new_request';
newRequest();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();
