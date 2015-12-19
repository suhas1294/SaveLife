class Address < ActiveRecord::Base
  # Associations
  has_one :profile
  belongs_to :state
  belongs_to :country
end
