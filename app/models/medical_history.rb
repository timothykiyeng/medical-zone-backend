class MedicalHistory < ApplicationRecord
  belongs_to :patient, optional: true
end
