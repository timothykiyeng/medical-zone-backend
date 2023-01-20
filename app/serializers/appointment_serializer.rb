class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :startDate, :endDate, :description, :patient_id, :doctor_id
end
