class AddPatientToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :patient, null: false, foreign_key: true
  end
end
