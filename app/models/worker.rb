class Worker < ApplicationRecord
  belongs_to :worker_type
  has_and_belongs_to_many :medical_centers
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true

  def full_name
    first_name + " " + last_name
  end
end
