class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  
  version :thumb do 
  	process :resize_to_fill => [440, 220]
  end
  def store_dir
    'public/uploads'
  end
  def cache_dir 
  	"#{Padrino.root}/tmp/uploads"
  end
  storage :fog
end