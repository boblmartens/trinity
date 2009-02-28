require 'test_helper'

class ChurchTest < ActiveSupport::TestCase
  should_have_many :services

  should_require_attributes :name, :street, :city, :state, :zip
end
