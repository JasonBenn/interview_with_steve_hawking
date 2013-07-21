class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :subcategories
  has_many :questions, through: :subcategories
end
