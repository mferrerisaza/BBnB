module ApplicationHelper
  def photo_or_generic(record)
    if record.photo.blank?
      cl_image_path "p1by5h4nsvstgzwakxqz.jpg"
    else
      cl_image_path record.photo, height: 900, width: 1600, crop: :fill
    end
  end

  def profile_photo_or_generic(user)
    if user.profile.nil? || user.profile.photo.blank?
      cl_image_tag "facebook-profile-picture-no-pic-avatar.jpg", class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
    else
      cl_image_path user.profile.photo, height: 393, width: 300, crop: :fill
    end
  end

  def card_photo_or_generic(user)
    if user.profile.nil? || user.profile.photo.blank?
      cl_image_tag "facebook-profile-picture-no-pic-avatar.jpg",class: "card-avatar"
    else
      cl_image_path user.profile.photo, height: 393, width: 300, crop: :fill, class: "card-avatar"
    end
  end
end
