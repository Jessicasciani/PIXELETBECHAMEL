class VideoUploader < CarrierWave::Uploader::Base

include Cloudinary::CarrierWave
process encode_video: [:mp4, resolution: "200x200", callbacks: { after_transcode: :set_success } ]

end
