class Season < ActiveRecord::Base
  has_many :services

  validates_presence_of :name, :color
end
