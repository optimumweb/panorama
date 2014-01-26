class Email < ActiveRecord::Base
  as_enum :status, [:draft, :sending, :sent, :error, :read]

  belongs_to :account
  belongs_to :creator
  belongs_to :from, polymorphic: true
  belongs_to :to, polymorphic: true

  validates :from, :to, :subject, :body, :status, :creator, :account, presence: true
  validates :subject, :body, length: {minimum: 1}
end
