class Note < ActiveRecord::Base
  belongs_to :topic
  validates_presence_of :name, :email, :body
end
