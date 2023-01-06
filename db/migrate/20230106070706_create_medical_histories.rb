class CreateMedicalHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_histories do |t|
      t.string :diagnosis
      t.integer :patient_id
      t.string :test_date

      t.timestamps
    end
  end
end
