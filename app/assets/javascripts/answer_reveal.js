$(document).ready(function(){
  $('body').on('click','.reveal',function(){
    $('.answer').show()
  })

  $('body').on('click','.next-question',function(){
    var nextQuestionId = parseInt($('#question-id').text()) + 1
    $.get ('/questions/'+ nextQuestionId, function(response){
      $('.interview-question').html(response)
    })
  })
})
