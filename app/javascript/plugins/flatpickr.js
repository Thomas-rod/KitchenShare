import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const initFlatpicker = () => {
  flatpickr(".datepicker", {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
  })
}

export { initFlatpicker };
