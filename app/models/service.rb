class Service < ActiveRecord::Base
  has_many :comments, :as => :commentable
  has_many :attached_files
  has_many :service_times

  validates_presence_of :name, :description, :season, :other
end
