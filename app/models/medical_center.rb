class MedicalCenter < ApplicationRecord
  belongs_to :medical_center_type
  has_and_belongs_to_many :workers
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
end
