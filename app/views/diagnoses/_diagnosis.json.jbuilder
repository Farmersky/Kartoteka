json.extract! diagnosis, :id, :name_clinic, :date_diagnosis, :disease_id, :patient_id, :doctor_id, :created_at, :updated_at
json.url diagnosis_url(diagnosis, format: :json)