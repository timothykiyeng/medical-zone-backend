class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :patients, :birth_date, :birthdate
  end
end
