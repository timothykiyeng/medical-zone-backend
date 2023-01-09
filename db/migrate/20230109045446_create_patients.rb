class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :age
      t.integer :birth_date
      t.string :email
      t.string :diagnosis
      t.string :gender
      t.string :password_digest

      t.timestamps
    end
  end
end
