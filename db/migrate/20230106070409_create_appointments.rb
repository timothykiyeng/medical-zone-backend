class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.string :startDate
      t.string :endDate
      t.string :title
      t.string :location
      t.string :notes
      t.timestamps
    end
  end
end
