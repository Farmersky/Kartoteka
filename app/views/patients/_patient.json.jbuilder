json.extract! patient, :id, :name, :lastname, :phone, :email, :address, :created_at, :updated_at
json.url patient_url(patient, format: :json)