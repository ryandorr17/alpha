require 'minitest'
require_relative '../lib/slack_talker'

class TestSlackTalker < MiniTest::Test
  def setup
    @slack_talker = SlackTalker.new
  end

  def test_slack_talker
    assert_instance_of SlackTalker, @slack_talker
  end

  def test_talk
    response = @slack_talker.talk
    assert_equal response.code, "200"
  end
end
