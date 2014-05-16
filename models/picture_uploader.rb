class PictureUploader < CarrierWave::Uploader::Base
  def store_dir
    'public/uploads'
  end
  storage :fog
end