class Campaign < ActiveRecord::Base
  as_enum :type, [:conference, :webinar, :tradeshow, :public_relations, :partnership, :referral_program, :advertisement, :direct_mail, :email, :telemarketing, :other], strings: true
  as_enum :status, [:planning, :active, :inactive, :completed]

  has_many :contacts
end