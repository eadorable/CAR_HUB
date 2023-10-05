import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="delayed-display"
export default class extends Controller {
  static targets = ["orderStatus"];
  connect() {
    // console.log("Hello from delayed_display_controller.js")
    // console.log(this.orderStatusTarget.innerText)

    setTimeout(() => {
      this.orderStatusTarget.innerText = "Your order is being processed..."
    }, 3000);

    setTimeout(() => {
      this.orderStatusTarget.innerText = "Your order is being processed......"
    }, 4000);

    setTimeout(() => {
      this.orderStatusTarget.innerText = "Your order is being processed............"
    }, 5000);

    setTimeout(() => {
      this.orderStatusTarget.innerText = "Your order is being processed........................"
    }, 6000);

    setTimeout(() => {
      this.orderStatusTarget.innerText = "Congratulations, your car is on its way!"
    }, 7000);
  }

}
