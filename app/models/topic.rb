class Topic < ActiveRecord::Base
  belongs_to :course
  has_many :notes
  validates_presence_of :title, :topicduration
end
