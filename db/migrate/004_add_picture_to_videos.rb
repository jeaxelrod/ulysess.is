class AddPictureToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.string :picture
    end
  end

  def self.down
    change_table :videos do |t|
      t.remove :picture
    end
  end
end
