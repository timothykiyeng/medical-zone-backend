class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :birth_date, :email, :diagnosis, :gender, :password_digest
end
