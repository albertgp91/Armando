module UserHelper
  def user_avatar(user, options = { width: 200 })
    classes = options[:class] || ''
    classes << ' rounded-circle'

    if user.photo.attached?
      cl_image_tag user.photo.key, class: classes, width: options[:width]
    else
      image_tag @user.avatar_file.present? ? @user.avatar_file : "profile_placeholder.png",
        class: classes, width: options[:width]
    end
  end
end
