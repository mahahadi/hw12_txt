json.extract! patient, :id, :first_name, :last_name, :email, :phone, :active_state, :doctor_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)