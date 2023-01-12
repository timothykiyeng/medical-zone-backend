class ChangeDoctorIdToBeIntegerInAppointments < ActiveRecord::Migration[7.0]
  def change
    change_column :appointments, :doctor_id, :integer, using: 'doctor_id::integer'
  end
end
