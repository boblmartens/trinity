require 'test_helper'

class ServiceTimeTest < ActiveSupport::TestCase
  should_belong_to :service

  should_validate_presence_of :service_date, :service_time
end
