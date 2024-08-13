import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"]
  
  connect() {
    this.element.addEventListener("mouseover", this.show.bind(this))
    this.element.addEventListener("mouseleave", this.hide.bind(this))
  }

  disconnect() {
    this.element.removeEventListener("mouseover", this.show.bind(this))
    this.element.removeEventListener("mouseleave", this.hide.bind(this))
  }

  show() {
    this.menuTarget.classList.remove("hidden")
  }

  hide() {
    this.menuTarget.classList.add("hidden")
  }
}
