class Task < ActiveRecord::Base
  as_enum :status, [:normal, :completed, :deleted], strings: true

  before_save :set_default_values

  belongs_to :account
  belongs_to :user
  belongs_to :creator, class_name: "User"
  belongs_to :taskable, polymorphic: true

  validates :name, :status, :creator, :user, :account, presence: true
  validates :name, length: {minimum: 1}
  validates :is_urgent, inclusion: {in: [true, false]}

  private

  def set_default_values
    self.status = 'normal' if self.status.nil?
    self.is_urgent = false if self.is_urgent.nil?
  end
end
