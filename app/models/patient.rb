class Patient < ActiveRecord::Base
  has_many :visits, dependent: :destroy
  has_many :diagnoses, dependent: :destroy
end
