class Disease < ActiveRecord::Base
  has_many :diagnoses, dependent: :destroy
end
