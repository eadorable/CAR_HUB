import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="logo"
export default class extends Controller {
  static targets = ["carLogo"];

  connect() {
    // console.log("Hello from logo_controller.js")

    this.carLogoTargets.forEach((element) => {
      // const brand = element.textContent.trim().toLowerCase();
      const brand = element.innerText.trim().toLowerCase();
      element.style.backgroundImage = `url('/assets/logos/${brand}.png')`;
    });
  }
}
