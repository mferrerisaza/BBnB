import "bootstrap";
import { autocomplete } from '../components/autocomplete';
autocomplete();
import "./dashboard";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

// Initialize Flatpickr
flatpickr(".datepicker", {
  altInput: true
})

