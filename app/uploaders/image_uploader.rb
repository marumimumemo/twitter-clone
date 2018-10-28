class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  version :header_a do
   process resize_to_fill: [1300, 280, "Center"]
  end

  version :header_b do
   process resize_to_fill: [288, 95, "Center"]
  end

  version :thumb_a do
   process resize_to_fill: [33, 33, "Center"]
   process :round_image
  end

  version :thumb_b do
   process resize_to_fill: [70, 70, "Center"]
   process :round_image
  end

  version :thumb_c do
   process resize_to_fill: [200, 200, "Center"]
  end

  version :thumb_d do
   process resize_to_fill: [45, 45, "Center"]
   process :round_image
  end

  version :tweet_image do
   process resize_to_fill: [300, 200, "Center"]
  end

  private
  def round_image
    manipulate! do |img|
      path = img.path
      new_tmp_path = File.join(Rails.root, 'public', cache_dir, "/round_#{File.basename(path)}")
      width, height = img[:dimensions]
      radius_point = ((width > height) ? [width / 2, height] : [width, height / 2]).join(',')
      imagemagick_command = ["convert",
                           "-size #{ width }x#{ height }",
                           "xc: transparent",
                           "-fill #{ path }",
                           "-draw 'circle #{ width / 2 },#{ height / 2 } #{ radius_point }'",
                           "+repage #{new_tmp_path}"].join(' ')
      system(imagemagick_command)
      MiniMagick::Image.open(new_tmp_path)
    end
  end

  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end
