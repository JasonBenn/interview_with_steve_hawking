class AdminPagesController < ApplicationController
  def home
    @questions = Question.all
    @user = current_user

  end

  def about

  end
end
