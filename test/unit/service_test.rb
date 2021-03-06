require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  should_validate_presence_of :name, :season_id, :description
  should_have_many :service_times, :attached_files, :comments
end
