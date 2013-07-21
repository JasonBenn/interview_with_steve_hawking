class QuestionsController < ApplicationController
  def show
    @user = current_user
    if id = params[:id]
      @question = Question.find(id)
      render :show, layout: false
    else
      @question = Question.first
    end
  end
end
