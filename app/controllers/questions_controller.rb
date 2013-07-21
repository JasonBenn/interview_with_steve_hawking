class QuestionsController < ApplicationController

  def show
    @question = Question.first
  end

end
