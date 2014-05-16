class PictureUploader < CarrierWave::Uploader::Base
  def store_dir
    'public/uploads'
  end
  def cache_dir 
  	"#{Padrino.root}/tmp/uploads"
  end
  storage :fog
end