class Self < ApplicationRecord
  has_many :jobs
  has_many :educations
  has_many :links
  has_many :projects
end
