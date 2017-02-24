class Diagnosis < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
  belongs_to :disease
  validates :patient_id, presence: true
  validates :doctor_id, presence: true
  validates :disease_id, presence: true
end
