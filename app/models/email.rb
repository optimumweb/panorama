class Email < ActiveRecord::Base
  as_enum :status, [:draft, :sending, :sent, :error, :read]

  belongs_to :organization
  belongs_to :from, polymorphic: true
  belongs_to :to, polymorphic: true
end
