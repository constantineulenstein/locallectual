import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  //$('.select2').select2({placeholder: "Specify language"});
  $('.select2').select2(); // (~ document.querySelectorAll)
};

export { initSelect2 };
