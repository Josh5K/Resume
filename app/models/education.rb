class Education < ApplicationRecord
  belongs_to :self
  has_many :education_description
end
