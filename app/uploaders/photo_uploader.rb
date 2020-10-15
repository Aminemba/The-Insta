class PhotoUploader < CarrierWave::Uploader::Base

  # include Cloudinary::CarrierWave
  include CarrierWave::MiniMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  version :standard do
    process :resize_to_fill => [50, 50, :center]
  end

  # version :thumbnail do
  #   resize_to_fit(100, 100)
  # end

  version :thumb do
    process :resize_to_fit => [50,50]
  end

 storage :file




end
