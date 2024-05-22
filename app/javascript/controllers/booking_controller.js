import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking"
export default class extends Controller {
  static targets = [ "date", "timeSelect" ]
  static values = { slots: Array }

  switchDate(event) {
    document.querySelectorAll(".active").forEach((date) => {
      date.classList.remove("active")
      date.classList.remove("btn-info")
    });
    event.target.classList.add("active")
    event.target.classList.add("btn-info")
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
      let formatted_slot = slot.substring(11,16)
      option.innerText = formatted_slot
      option.value = slot
      this.timeSelectTarget.add(option)
    })
  }
}
