//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require_tree .

const slider = document.querySelector('#slider-input');
console.log(slider.value);
slider.addEventListener('input', (event) => {
  const value = event.target.value;
  const display_value = document.querySelector('.range-slider__value');
  display_value.innerText = value;
});


