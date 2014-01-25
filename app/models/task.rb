class Task < ActiveRecord::Base
  as_enum :status, [:normal, :completed, :deleted]

  belongs_to :user
  belongs_to :creator, class_name: "User"
  belongs_to :taskable, polymorphic: true
end
