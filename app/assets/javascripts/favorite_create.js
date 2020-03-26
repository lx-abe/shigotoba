$(document).on('turbolinks:load', function () {
  $('.favorite').on('click', '.create', function (e) {
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
