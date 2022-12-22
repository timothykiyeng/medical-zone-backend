class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    has_many :medical_histories
    has_secure_password

    PASSWORD_REQUIREMENTS = /\A
        (?=.{8,}) #At least eight characters long
        (?=.*\d)  #Contain at least one number
        (?=.*[a-z]) #contain at least one lowercase letter
        (?=.*[A-Z]) #contain at least one upercase letter
        (?=*[[:^alnum:]]) #contain at least one symbol
    /x

    validates :email, presence: true, uniqueness: true
    validates :name, presence: true
    validates :password, confirmation: true
    validates :password_confirmation, presence: true
    validates :password, format: PASSWORD_REQUIREMENTS
end
