class Comment < ActiveRecord::Base
  belongs_to :account
  belongs_to :author, class_name: "User"
  belongs_to :commentable, polymorphic: true

  validates :body, :commentable, :author, :account, presence: true
  validates :body, length: {minimum: 1}
end
