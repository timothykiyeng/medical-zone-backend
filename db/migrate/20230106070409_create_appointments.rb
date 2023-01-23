class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
<<<<<<< HEAD
      t.string :title
      t.string :location
      t.string :startDate
      t.string :endDate
      t.string :notes
=======
>>>>>>> 3fd7f218b8fd2c806c7a4a869cffa9bd76e03873
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
