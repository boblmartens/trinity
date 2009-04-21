class ServiceTime < ActiveRecord::Base
  belongs_to :service

  validates_presence_of :service_date, :service_time
end
