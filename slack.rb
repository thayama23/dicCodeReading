require "slack-notify"
require 'clockwork'
require 'active_support/time'
# require "dotenv"
# Dotenv.load('.env')


module Clockwork
  handler do |job|
    client = SlackNotify::Client.new(
      webhook_url: "https://hooks.slack.com/services/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",
      channel: "#general",
      username: "aaaaa",
      icon_url: "http://mydomain.com/myimage.png",
      icon_emoji: ":shipit:",
      link_names: 1
    )
    client.notify("Hello Hello")
  end
  every(3.minutes, "every 3 minutes, say Hello Hello")
end
