class Video < ActiveRecord::Base
  def make_permalink 
    title.downcase.gsub(/\W/,'-').squeeze('-').chomp('-') if title
  end
end
