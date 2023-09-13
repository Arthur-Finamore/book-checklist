import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ['content'];

  connect() {
    this.contentTarget.classList.add('hidden');
  }

  toggle() {
    this.contentTarget.classList.toggle('hidden');
  }
}
