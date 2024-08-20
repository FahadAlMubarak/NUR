import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["list"]

  connect() {
    console.log("Navbar controller connected");
  }

  activeLink(event) {
    // Remove the 'active' class from all list items
    this.listTargets.forEach((item) => item.classList.remove('active'));

    // Add the 'active' class to the clicked list item
    event.currentTarget.classList.add('active');
  }
}
