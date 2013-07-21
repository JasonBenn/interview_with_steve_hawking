class QuestionsController < ApplicationController
  def show
    @user = current_user
    @question = Question.find(params[:id])
    if request.xhr?
      render :show, layout: false
    else
      render :show
    end
  end

end
