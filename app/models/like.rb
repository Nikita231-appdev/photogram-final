class Like < ApplicationRecord
  belongs_to(:fan, { :required => true, :class_name => "User", :foreign_key => "fan_id" })
  belongs_to(:photo, { :required => true, :class_name => "Photo", :foreign_key => "photo_id" })
  
end
