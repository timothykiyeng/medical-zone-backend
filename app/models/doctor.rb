class Doctor < ApplicationRecord
    has_secure_password

    belongs_to :department, optional: true
    has_many :appointments, dependent: :nullify
    has_many :patients, through: :appointments
  

    def permitted_email
        unless email.match?(/medizone.com/)
        errors.add(:permitted_emails, ": Must have a Medical Zone email.")
        end
    end


    validates :email, presence: true, uniqueness: true
    validates :name, presence: true
    ##validates :email, email: true
    validate :permitted_email

end
