class AddIsAvailableToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :is_available, :boolean
  end
end
