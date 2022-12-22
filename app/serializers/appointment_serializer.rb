class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_date, :end_date, :description, :patient_id, :doctor_id
end
