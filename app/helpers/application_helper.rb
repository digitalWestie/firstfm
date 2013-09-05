module ApplicationHelper
  require 'digest/md5'

  def gravatar_image_for(email, size=100) 
    image_tag(
    "http://www.gravatar.com/avatar/
    #{Digest::MD5::hexdigest(email)}?s=#{size}")
  end
end
