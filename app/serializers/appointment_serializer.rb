class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :startDate, :endDate, :description, :patient_id, :doctor_id
end
