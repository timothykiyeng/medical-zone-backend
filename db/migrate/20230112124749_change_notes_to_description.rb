class ChangeNotesToDescription < ActiveRecord::Migration[7.0]
  def change
    rename_column :appointments, :notes, :Description
  end
end
