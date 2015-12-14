class Course < ActiveRecord::Base
  has_many :topics
  validates_presence_of :name, :description, :author, :duration, :level, :rating, :released
end
