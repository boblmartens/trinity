require 'test_helper'

class ChurchTest < ActiveSupport::TestCase
  should_have_many :services

  should_validate_presence_of :name, :street, :city, :state, :zip
end
