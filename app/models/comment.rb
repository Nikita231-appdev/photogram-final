class Comment < ApplicationRecord
  belongs_to(:author, { :required => true, :class_name => "User", :foreign_key => "author_id" })
  belongs_to(:photo, { :required => true, :class_name => "Photo", :foreign_key => "photo_id" })
  
end
