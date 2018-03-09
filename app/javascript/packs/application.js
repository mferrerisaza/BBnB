import "bootstrap";
import { autocomplete } from '../components/autocomplete';
autocomplete();
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

// Initialize Flatpickr
flatpickr(".datepicker", {
  altInput: true
})

