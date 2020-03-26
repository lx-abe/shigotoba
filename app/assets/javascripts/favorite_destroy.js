$(document).on('turbolinks:load', function () {
  $('.favorite_button_field').on('click', '.favorite_destroy_button', function (e) {
    e.preventDefault()
    e.stopPropagation()
    $.ajax({
      url: e.target.href,
      type: 'POST',
      data: { "_method": "DELETE" },
      dataType: 'html',
    })
    .done(function (data) {
      $(e.target).replaceWith(data)
    })
  })
})
