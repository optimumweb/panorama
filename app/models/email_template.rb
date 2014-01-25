class EmailTemplate < ActiveRecord::Base
  belongs_to :organization
  belongs_to :creator, class_name: "User"
  belongs_to :layout, class_name: "EmailLayout"
end
