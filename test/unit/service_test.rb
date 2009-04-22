require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  should_belong_to :church
  should_validate_presence_of :name, :season, :description, :other
  should_have_many :service_times, :attached_files, :comments
end
