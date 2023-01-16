class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    has_many :medical_histories
    has_secure_password



    validates :email, presence: true, uniqueness: true
    validates :name, presence: true
    validates :email, email: true
    validates :password, presence: true, length: { minimum: 6, maximum: 255 }
end
