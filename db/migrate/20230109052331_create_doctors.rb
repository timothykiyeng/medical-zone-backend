class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :title
      t.string :name
      t.string :bio
      t.integer :department_id
      t.integer :patient_id
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
