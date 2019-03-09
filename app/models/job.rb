class Job < ApplicationRecord
  belongs_to :self
  has_many :job_description
end
