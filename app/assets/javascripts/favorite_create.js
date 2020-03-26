$(document).on('turbolinks:load', function () {
  $('.favorite_button_field').on('click', '.favorite_create_button', function (e) {
    e.preventDefault()
    e.stopPropagation()
    $.ajax({
      url: e.target.href,
      type: 'POST',
      dataType: 'html'
    })
    .done(function (data) {
      $(e.target).replaceWith(data)
    })
  })
})
