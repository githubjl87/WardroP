import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  static targets = ["datePickerStart", "datePickerEnd"];


  connect() {
    console.log(this);
    flatpickr(this.datePickerStartTarget, {minDate: "today"})
    flatpickr(this.datePickerEndTarget, {minDate: new Date().fp_incr(1)})

    // flatpickr(".anotherSelector");
  }


}
