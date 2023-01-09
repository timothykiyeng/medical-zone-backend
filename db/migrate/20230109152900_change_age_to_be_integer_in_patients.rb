class ChangeAgeToBeIntegerInPatients < ActiveRecord::Migration[7.0]
  def change
    change_column :patients, :age, :integer, using: 'age::integer'
  end
end
