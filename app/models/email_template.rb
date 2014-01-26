class EmailTemplate < ActiveRecord::Base
  belongs_to :account
  belongs_to :creator, class_name: "User"
  belongs_to :layout, class_name: "EmailLayout"

  validates :name, :subject, :layout, :body, :creator, :account, presence: true
  validates :name, :subject, :body, length: {minimum: 1}
end
