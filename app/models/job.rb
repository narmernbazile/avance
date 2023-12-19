class Job < ApplicationRecord
  validates :job_type, presence: true, inclusion: { in: ['research', 'internship'] }
  # Other model-related code
end
