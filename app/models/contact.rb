class Contact < ActiveRecord::Base
  as_enum :salutation, [:mr, :mrs, :ms, :dr, :prof], strings: true
  as_enum :status, [:lead, :client], strings: true

  belongs_to :account
  belongs_to :team
  belongs_to :creator, class_name: "User"
  belongs_to :assigned_user, class_name: "User"
  belongs_to :stage
  belongs_to :locale
  belongs_to :acquisition_method
  belongs_to :campaign
  has_many :addresses, as: :addressable
  has_many :appointments
  has_many :emails_sent, as: :from, class_name: "Email", foreign_key: "from_id"
  has_many :emails_received, as: :to, class_name: "Email", foreign_key: "to_id"
  has_many :tasks, as: :taskable
  has_many :comments, as: :commentable

  validates :account, presence: true
end
