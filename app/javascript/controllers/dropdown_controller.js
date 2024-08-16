import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"]

  connect() {
    this.showMenu = this.show.bind(this)
    this.hideMenu = this.hide.bind(this)
    
    // Mostrar o menu quando o mouse entra no botão
    this.element.addEventListener("mouseenter", this.showMenu)
    
    // Esconder o menu quando o mouse sai do menu
    this.menuTarget.addEventListener("mouseleave", this.hideMenu)
  }

  disconnect() {
    this.element.removeEventListener("mouseenter", this.showMenu)
    this.menuTarget.removeEventListener("mouseleave", this.hideMenu)
  }

  show() {
    this.menuTarget.classList.remove("hidden")
  }

  hide() {
    this.menuTarget.classList.add("hidden")
  }
}