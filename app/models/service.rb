class Service < ActiveRecord::Base
  belongs_to :season
  belongs_to :user
  has_many :comments, :as => :commentable
  has_many :attached_files
  has_many :service_times

  validates_presence_of :name, :description, :season_id
end
