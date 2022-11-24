import { Controller } from "@hotwired/stimulus"
// Connects to data-controller=“display-price”
export default class extends Controller {
  static targets = ["totalPrice", "startDate", "endDate", "button", "priceContainer"]
  static values = { chairPrice: Number }
  connect() {
  }
  compute() {
    const endDate = new Date(this.endDateTarget.value)
    const startDate = new Date(this.startDateTarget.value)
    const diff = endDate - startDate

    if (this.startDateTarget.value==="" || this.endDateTarget.value==="" || diff <= 0 ) return this.#bookingError()

    const diffDays = diff / 1000 / 60 / 60 / 24
    const totalPrice = this.chairPriceValue * diffDays

    this.priceContainerTarget.classList.remove("d-none");

    this.totalPriceTarget.innerHTML = `${totalPrice} €`
    this.buttonTarget.removeAttribute("disabled")
  }
  #bookingError() {
    this.totalPriceTarget.innerHTML = "Dates erronées !"
    this.buttonTarget.setAttribute("disabled", "")
  }
}
