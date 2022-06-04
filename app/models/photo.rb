class Photo < ApplicationRecord

  mount_uploader :image, ImageUploader
  belongs_to(:owner, { :required => true, :class_name => "User", :foreign_key => "owner_id" })
  has_many(:likes, { :class_name => "Like", :foreign_key => "photo_id", :dependent => :destroy })
  has_many(:comments, { :class_name => "Comment", :foreign_key => "photo_id", :dependent => :destroy })

end
