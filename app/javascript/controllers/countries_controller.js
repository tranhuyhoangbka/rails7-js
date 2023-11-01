import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="countries"
export default class extends Controller {
  connect() {
    console.log('connected!!')
  }

  initialize() {
    this.element.setAttribute("data-action", "change->countries#loadCountryStates")
  }

  loadCountryStates() {
    const selectedCountry = this.element.options[this.element.selectedIndex].value;
    // alert(selectedCountry)
    this.url = `/countries/fetch_country_states?country_code=${selectedCountry}`;
    fetch(this.url, {
      headers: {
        Accept: "text/vnd.turbo-stream"
      }
    }).then(response => response.text())
    .then(html => Turbo.renderStreamMessage(html))
  }
}
