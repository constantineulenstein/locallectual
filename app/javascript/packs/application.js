//= require jquery
import "bootstrap";
import scroll from "./box-scroll.js";

import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
flatpickr(".datepicker", {dateFormat: "Y-m-d"});

import { initSelect2 } from '../plugins/init_select2';
initSelect2();

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

import { newRequest } from './new_friendrequest';
newRequest();
