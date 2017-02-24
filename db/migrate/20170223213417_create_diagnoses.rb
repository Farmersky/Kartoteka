class CreateDiagnoses < ActiveRecord::Migration
  def change
    create_table :diagnoses do |t|
      t.string :name_clinic
      t.date :date_diagnosis
      t.integer :disease_id
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
