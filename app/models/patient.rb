class Patient < ApplicationRecord
    belongs_to :doctor
    has_many :appointments
    has_many :doctors, through: :appointments
    has_many :medical_histories
end
