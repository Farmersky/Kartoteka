class Visit < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  validates :patient_id, presence: true
  validates :doctor_id, presence: true
end
