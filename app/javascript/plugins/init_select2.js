import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({placeholder: "Specify language"}); // (~ document.querySelectorAll)
};

export { initSelect2 };
