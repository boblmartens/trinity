class AttachedFile < ActiveRecord::Base
  belongs_to :service

  validates_presence_of :name, :description, :user_id
end
