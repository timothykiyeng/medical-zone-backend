class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_date, :end_date, :notes, :patient_id, :doctor_id
end
