class Question < ActiveRecord::Base
  attr_accessible :question, :answer, :title, :audio_path
  belongs_to :subcategory
  belongs_to :category
end
