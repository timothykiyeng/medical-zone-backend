class ChangeDiagnosisToBeTextInMedicalHistories < ActiveRecord::Migration[7.0]
  def change
    change_column :medical_histories, :diagnosis, :text
  end
end
