import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button"]

  connect() {
    console.log("hello")
  }

  updateNavbar() {
    if (window.scrollY >= 500) {
      this.element.classList.add("navbar-black")
      this.buttonTarget.classList.add("btn-black")
    } else {
      this.element.classList.remove("navbar-black")
      this.buttonTarget.classList.remove("btn-black")
    }
  };
}