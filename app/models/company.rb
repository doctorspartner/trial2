class Company < ActiveRecord::Base
  has_many :contacts
  validates_presence_of :company_name
end
