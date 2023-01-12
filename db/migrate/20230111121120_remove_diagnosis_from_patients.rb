class RemoveDiagnosisFromPatients < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :diagnosis, :string
  end
end
