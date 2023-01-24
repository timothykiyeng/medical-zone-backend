class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :birthdate, :email, :gender, :doc, :total_appts

  def total_appts
    object.appointments.size
  end

end
