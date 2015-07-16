class Exercise < ActiveRecord::Base
  belongs_to :user
  validates :exercise_name, :presence => true
  validates :burned, :presence => true
end
