import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="avatar"
export default class extends Controller {
  static targets = ["img", "input"]

  choose(event) {
    const selectedAvatar = event.currentTarget
    const avatarPath = selectedAvatar.dataset.avatarPath
    selectedAvatar.classList.toggle("chosen-avatar")

    this.imgTargets.forEach(img => {
      if (!(img == selectedAvatar)) {
        img.classList.remove("chosen-avatar")
      }
    })

    this.inputTarget.value = avatarPath
  }
}
