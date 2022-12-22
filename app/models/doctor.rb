class Doctor < ApplicationRecord
    belongs_to :department
    has_many :appointments
    has_many :patients, through: :appointments
    has_secure_password

    def permitted_email
        unless email.match?(/medizone.com/)
        errors.add(:permitted_emails, ": Must have a Medical Zone email.")
        end
    end


    validates :email, presence: true, uniqueness: true
    validates :name, presence: true
    validate :permitted_email

end
