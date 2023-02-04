import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { passengerCount: Number }
  
    connect() {
      console.log(`init:passengerCountValue=${this.passengerCountValue}`)
  }

  removePassenger() {
    console.log(`event.target.id=${event.target.id}`)
    const passengerToRemove = document.getElementById(`passenger_${event.target.id}`)
    passengerToRemove.remove()
  }

  addPassenger() {
    const passengers = document.getElementById('passengers')
    passengers.appendChild(passenger_fields.content.cloneNode(true))

    this.passengerCountValue++
    
    this.setPassengerAttributeIndexes()
    this.updateNumberOfPassengers()
  }

  updateNumberOfPassengers() {
    const inputNumberPassengers = document.getElementById('booking_number_of_passengers')
    inputNumberPassengers.setAttribute('value',`${this.passengerCountValue}`)
    console.log(`add:passengerCountValue=${this.passengerCountValue}`)
  }

  setPassengerAttributeIndexes() {
    const newPassengerDiv = document.getElementById(`passenger_new`)
    
    const nameLabel = newPassengerDiv.firstElementChild.firstElementChild
    nameLabel.setAttribute("for",`booking_passengers_attributes_${this.passengerCountValue - 1}_name`)
    const nameInput = nameLabel.nextElementSibling
    nameInput.setAttribute("name",`booking[passengers_attributes][${this.passengerCountValue - 1}][name]`)
    nameInput.setAttribute("id",`booking_passengers_attributes_${this.passengerCountValue - 1}_name`)

    const emailLabel = newPassengerDiv.firstElementChild.nextElementSibling.firstElementChild
    emailLabel.setAttribute("for",`booking_passengers_attributes_${this.passengerCountValue - 1}_email`)
    const emailInput = emailLabel.nextElementSibling
    emailInput.setAttribute("name",`booking[passengers_attributes][${this.passengerCountValue - 1}][email]`)
    emailInput.setAttribute("id",`booking_passengers_attributes_${this.passengerCountValue - 1}_email`)

    newPassengerDiv.setAttribute("id",`passenger_${this.passengerCountValue - 1}`)

    const removeButton = document.getElementById('new')
    removeButton.setAttribute("id",`${this.passengerCountValue - 1}`)

  }
}
