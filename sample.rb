require "slack-notify"
require 'clockwork'
include Clockwork

# module Clockwork
#     def log
#         client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
#         client.notify("Hello There!")
# 	end

#     every(3.minutes, 'log')
# end

handler do |job|
    client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
    client.notify("Hello There! This has been sent by clockwork")
end
  
every(10.seconds, 'frequent.job')
#every(3.minutes, 'less.frequent.job')