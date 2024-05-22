import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking"
export default class extends Controller {
  static targets = [ "date", "timeSelect" ]
  static values = { slots: Array }

  switchDate(event) {
    let slots = this.slotsValue
    // Get the selected date
    let selectedDate = event.target.innerText

    // Find the slots for the selected date
    let selectedSlots = slots.find(day => day.date == selectedDate).slots

    // Clear the current options
    this.timeSelectTarget.innerHTML = ""

    // Add the new options to the select element
    selectedSlots.forEach(slot => {
      let option = document.createElement("option")
      option.text = slot
      option.value = slot
      this.timeSelectTarget.add(option)
    })
  }
}
