require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  should_belong_to :commentable
end
