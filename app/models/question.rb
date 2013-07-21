class Question < ActiveRecord::Base
  attr_accessible :question, :answer
  belongs_to :subcategory
  belongs_to :category
end
