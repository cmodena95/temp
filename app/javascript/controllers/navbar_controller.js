import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button"]

  connect() {
    console.log("hello")
  }

  updateNavbar() {
    if (window.scrollY >= window.innerHeight) {
      this.element.classList.add("navbar-black")
      this.buttonTarget.classList.add("btn-white")
    } else {
      this.element.classList.remove("navbar-black")
      this.buttonTarget.classList.remove("btn-white")
    }
  };
}