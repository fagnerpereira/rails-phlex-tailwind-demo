import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["content"]

  connect() {
    console.log("hello from dropdown controller")
  }

  toggle() {
    console.log("toggle")
    this.contentTarget.classList.toggle("hidden")
  }
}
