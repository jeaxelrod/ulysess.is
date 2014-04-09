class Comment < ActiveRecord::Base
  belongs_to :video
  validates_presence_of :name
  validates_presence_of :body
end
