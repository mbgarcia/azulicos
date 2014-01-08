class Athlete < ActiveRecord::Base
  has_one :physical_data
  has_one :technical_data

  accepts_nested_attributes_for :physical_data, :technical_data
end
