require 'test_helper'

class AttachedFileTest < ActiveSupport::TestCase
  should_belong_to :service

  should_validate_presence_of :name, :description, :user_id
end
