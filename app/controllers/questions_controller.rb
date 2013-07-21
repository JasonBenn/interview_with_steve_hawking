class QuestionsController < ApplicationController
  def show
    @user = User.find(session[:user_id])
    if id = params[:id]
      @question = Question.find(id)
      render :show, layout: false
    else
      @question = Question.first
    end
  end
end
