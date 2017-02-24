class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :date
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
