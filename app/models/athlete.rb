class Athlete < ActiveRecord::Base
  has_one :physical_data
  has_one :technical_data
  has_one :special_care

  accepts_nested_attributes_for :physical_data, :technical_data, :special_care
end
