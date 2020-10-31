module ApplicationHelper

  def image_url(user, dimension = 150)
    if user.imageURL.nil? || user.imageURL.blank?
      image_tag('typewriter2.jpg', size: dimension)
    else
      user_image = "#{user.imageURL}"
      image_tag(user_image, size: dimension, class: "rounded shadow mx-auto d-block")
    end
  end
  
end
