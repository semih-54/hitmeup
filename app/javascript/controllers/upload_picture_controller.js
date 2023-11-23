import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="upload-picture"
export default class extends Controller {
  static targets = ["proof"]
  connect() {
  }

  upload(event) {
    console.log(event.currentTarget.value)
    if (event.currentTarget.value === "completed") {
      this.proofTarget.classList.remove("d-none")
    } else {
      this.proofTarget.classList.add("d-none")
    }
  }
}
