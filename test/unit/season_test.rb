require 'test_helper'

class SeasonTest < ActiveSupport::TestCase
  should_have_many :services

  should_validate_presence_of :name, :color
end
