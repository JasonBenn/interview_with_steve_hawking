$(document).ready(function() {
  $('audio').on('ended', function() { $('#two').remove() })
  var timer
  setTimeout(moveDown, 500)
})

function moveDown() {
  $('#two').show()
  timer = setTimeout(moveUp, Math.random()*200+200)
}

function moveUp() {
  $('#two').hide()
  timer = setTimeout(moveDown, Math.random()*200+200)
}
