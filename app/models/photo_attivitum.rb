class PhotoAttivitum < ActiveRecord::Base
has_attached_file :image
validates_attachment :image, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}

end
