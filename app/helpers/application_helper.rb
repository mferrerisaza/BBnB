module ApplicationHelper
  def photo_or_generic(record)
    if record.photo.blank?
      cl_image_path "http://res.cloudinary.com/dnf96fubu/image/upload/v1520418575/cqsfdsswkh7ebihretfo.jpg"
    else
      cl_image_path record.photo, height: 300, width: 300, crop: :fill
    end
  end

  def profile_photo_or_generic(user)
    if user.profile.nil? || user.profile.photo.blank?
      cl_image_tag "http://res.cloudinary.com/dnf96fubu/image/upload/v1520418809/facebook-profile-picture-no-pic-avatar.jpg", class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
    else
      cl_image_path user.profile.photo, height: 300, width: 300, crop: :fill
    end
  end

end
