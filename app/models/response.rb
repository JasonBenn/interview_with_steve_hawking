class Response < ActiveRecord::Base

  attr_accessible :description, :question_id, :times_seen, :user_id

  validates_uniqueness_of :user_id, scope: [:question_id]

end
