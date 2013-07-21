class QuestionsController < ApplicationController
  def show
    if id = params[:id]
      puts "**************"
      puts params
      @question = Question.find(id)
      render :show, layout: false
    else
      @question = Question.first
    end
  end
end
