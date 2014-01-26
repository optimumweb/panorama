class Campaign < ActiveRecord::Base
  as_enum :type, [:conference, :webinar, :tradeshow, :public_relations, :partnership, :referral_program, :advertisement, :direct_mail, :email, :telemarketing, :other], strings: true
  as_enum :status, [:planning, :active, :inactive, :completed], strings: true

  belongs_to :account
  belongs_to :creator, class_name: "User"
  has_many :contacts

  validates :name, :type, :status, :creator, :account, presence: true
end
