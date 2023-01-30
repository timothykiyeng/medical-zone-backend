class Appointment < ApplicationRecord
  belongs_to :patient, optional: true
  belongs_to :doctor, optional: true

  validates :description, presence: true
end
