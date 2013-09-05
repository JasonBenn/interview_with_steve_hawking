class ResponsesController < ApplicationController
  def create
    @user = current_user
    Response.create(
      user_id: current_user.id,
      question_id: params[:question_id],
      times_seen: 1
      )
    render nothing: true
    # response = @user.responses.find_or_initialize_by_question_id(params[:id])
    # response.update_attributes :times_seen => (response.times_seen + 1)
  end

  def create
    Question.find_by_id(params[:question_id]).responses.create(
      user_id: current_user.id,
      times_seen: 1)
    redirect_to :root
  end

  def destroy
    Question.find_by_id(params[:question_id]).responses.find_by_id(params[:id]).destroy
    redirect_to :root
  end
end
