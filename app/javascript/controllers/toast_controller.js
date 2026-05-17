import { Controller } from "@hotwired/stimulus"
import Toastify from "toastify-js"

export default class extends Controller {
  connect() {
    const message = this.element.dataset.message
    const type = this.element.dataset.type

    let background = "#22c55e" // success

    if (type === "alert") {
      background = "#ef4444"
    }

    Toastify({
      text: message,
      duration: 3000,
      gravity: "top",
      position: "right",
      style: {
        background: background
      }
    }).showToast()

    this.element.remove()
  }
}