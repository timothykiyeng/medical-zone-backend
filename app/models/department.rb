class Department < ApplicationRecord
  has_many :doctors, dependent: :nullify


  validates :name, presence: true
end
