import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  //$('.select2').select2({placeholder: "Specify language"});
  if ($('.select2.select-language')) {
    $('.select2.select-language').select2({placeholder: specify_language}); // (~ document.querySelectorAll)
  }
  if ($('.select2.select-hobby')) {
    $('.select2.select-hobby').select2({placeholder: specify_hobby}); // (~ document.querySelectorAll)
  }

};

export { initSelect2 };
