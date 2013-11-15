class Contact < ActiveRecord::Base
  belongs_to :company
  has_many :notes
end
