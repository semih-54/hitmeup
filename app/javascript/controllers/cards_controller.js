import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cards"
export default class extends Controller {
  static targets = ["hitman", "choice"];

  connect() {
    console.log("hello");
    // console.log(this.hitmenValue);
    console.log(this.hitmanTarget);
  }

  selected(event) {
    // console.log("card clicked");
    // console.log(event.currentTarget);
    // console.log(event.currentTarget.getAttribute('id'));
    //  this.cardsTarget.classList.toggle("d-none")
    // console.log(this.hitmanTarget);
    this.hitmanTarget.value = event.currentTarget.getAttribute('id')
    // On click of a hitman card, the select dropdown selected should be equal to the hitman id
    this.choiceTargets.forEach(element => {
      element.classList.remove("border-card")
      // element.classList.remove("border-danger")
    });
     event.currentTarget.classList.add("border-card")
    // event.currentTarget.classList.add("border-danger")
  }
}
