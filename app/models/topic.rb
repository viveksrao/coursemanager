class Topic < ActiveRecord::Base
  belongs_to :course
  validates_presence_of :title, :topicduration
end
