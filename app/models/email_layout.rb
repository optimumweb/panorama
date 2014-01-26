class EmailLayout < ActiveRecord::Base
  belongs_to :account
  belongs_to :creator, class_name: "User"

  validates :name, :body, :creator, :account, presence: true
  validates :name, length: {minimum: 1}
end
