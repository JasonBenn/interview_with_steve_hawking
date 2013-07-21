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

  
end
