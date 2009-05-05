class ServiceTime < ActiveRecord::Base
  belongs_to :service

  validates_presence_of :service_date, :service_time

  def pretty_date
    service_date.strftime("%A, %m.%d.%y")
  end

  def pretty_time
    service_time.strftime("%H:%M")
  end
end
