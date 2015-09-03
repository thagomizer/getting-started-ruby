# Sample demonstrating publishing and pulling messages using Pub/Sub.

# [START all]
require "gcloud"

gcloud = Gcloud.new "my-project-id", "/path/to/keyfile.json"
pubsub = gcloud.pubsub

topic = pubsub.topic "your-topic-name"

topic.publish "Ping!"

subscription = topic.subscription "your-subscription-name"

messages = subscription.pull
messages.each do |message|
  puts message.data
  message.acknowledge!
end
# [END all]

