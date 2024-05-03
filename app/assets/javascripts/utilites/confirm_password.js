document.addEventListener('turbolinks:load', function() {

  var control = document.querySelector('#user_password_confirmation')

  if (control) { control.addEventListener('input', checkPasswordConfirmation) }
})

var matchIcon = document.querySelector('.confirm')
var noMatchIcon = document.querySelector('.notconfirm')

function confirm() {
  matchIcon.classList.remove('hide')
  noMatchIcon.classList.add('hide')
}

function notconfirm() {
  matchIcon.classList.add('hide')
  noMatchIcon.classList.remove('hide')
}

function hide() {
  matchIcon.classList.add('hide')
  noMatchIcon.classList.add('hide')
}

function checkPasswordConfirmation() {
  var password = document.querySelector('#user_password').value
  var passwordConfirmation = document.querySelector('#user_password_confirmation').value

  if (passwordConfirmation.length > 0) {
    return hide()
  }

  if (password == passwordConfirmation) {
      confirm()
    else {
      notconfirm()
    }
  }
}