class Video < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  has_many :comments
  def make_permalink 
    title.downcase.gsub(/\W/,'-').squeeze('-').chomp('-') if title
  end
end
