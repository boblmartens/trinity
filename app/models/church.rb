class Church < ActiveRecord::Base
  has_many :services

  validates_presence_of :name, :street, :city, :state, :zip
end
