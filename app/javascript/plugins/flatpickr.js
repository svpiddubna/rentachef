import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import "flatpickr/dist/themes/material_green.css"
flatpickr(".datepicker", {
  altInput: true,
  defaultDate: "2019-03-01"
})
