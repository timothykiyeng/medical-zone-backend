class Appointment < ApplicationRecord
  belongs_to :patient, optional: true
  belongs_to :doctor, optional: true

  validates :patient, presence: true
  validates :doctor, presence: true
  validates :description, presence: true
end
