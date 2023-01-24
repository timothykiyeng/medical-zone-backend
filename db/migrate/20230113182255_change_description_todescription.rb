class ChangeDescriptionTodescription < ActiveRecord::Migration[7.0]
  def change
    rename_column :appointments, :Description, :description
  end
end
