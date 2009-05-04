class AttachedFile < ActiveRecord::Base
  belongs_to :service
  belongs_to :user
  has_many :comments, :as => :commentable

  validates_presence_of :name, :description, :user_id
  
  has_attached_file :attached
end
