class Stage < ActiveRecord::Base
  belongs_to :account
  has_many :contacts

  validates :name, :rank, :account, presence: true
  validates :name, length: {minimum: 1}
  validates :rank, numericality: {only_integer: true}, uniqueness: true
end
