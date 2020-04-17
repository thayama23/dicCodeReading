require “slack-notify”
require ‘clockwork’
require ‘active_support/time’
require “slack”

Slack.configure do |config|
config.token = ‘自分のtoken’
end

module Clockwork
  every(3.minutes, ‘test’) do
    sample = SlackNotify::Client.new(webhook_url: “(https://hooks.slack.com/services/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)”
    sample.notify(“Hello”)
  end
end
