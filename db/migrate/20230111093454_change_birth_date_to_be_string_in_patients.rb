class ChangeBirthDateToBeStringInPatients < ActiveRecord::Migration[7.0]
  def change
    change_column :patients, :birth_date, :string
  end
end
