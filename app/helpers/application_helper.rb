module ApplicationHelper
  def photo_or_generic(record)
    if record.photo.blank?
      cl_image_path "http://res.cloudinary.com/dnf96fubu/image/upload/v1520418575/cqsfdsswkh7ebihretfo.jpg"
    else
      cl_image_path record.photo, height: 300, width: 300, crop: :fill
    end
  end
end
