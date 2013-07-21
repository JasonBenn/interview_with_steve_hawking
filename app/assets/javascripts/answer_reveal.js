$(document).ready(function(){
  $('body').on('click','.reveal',function(){
    var questionId = parseInt($('#question-id').text())
    $.post('/questions/' + questionId + '/responses')
    $('.answer').show()
  })

  $('body').on('click','.next-question',function(){
    var nextQuestionId = parseInt($('#question-id').text()) + 1
    $.get ('/questions/' + nextQuestionId, function(response){
      $('.interview-question').html(response)
    })
  })
})
