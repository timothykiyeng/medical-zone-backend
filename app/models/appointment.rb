class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :patient, presence: true
  validates :doctor, presence: true
  validates :description, presence: true
end
