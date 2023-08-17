import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["startDate", "endDate", "price"];

  connect() {}

  update() {
    const pricePerDay = parseInt(this.priceTarget.dataset.price, 10);
    if (
      this.startDateTarget.value !== "" &&
      this.endDateTarget.value !== ""
    ) {
      const diffInMs =
        new Date(this.endDateTarget.value) -
        new Date(this.startDateTarget.value);
      const diffInDays = diffInMs / (1000 * 60 * 60 * 24);
      this.priceTarget.innerText = `${(
        diffInDays * (pricePerDay * 0.9)).toFixed(2)}`;
    }
  }
}
