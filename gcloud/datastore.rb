# Sample demonstrating storing and retrieving values from Datastore

# [START all]
require "gcloud"

gcloud = Gcloud.new "my-project-id", "/path/to/keyfile.json"
dataset = gcloud.datastore

entity = Gcloud::Datastore::Entity.new
entity.key = Gcloud::Datastore::Key.new "Greeting"
entity["message"] = "Hello world!"

dataset.save entity

query = Gcloud::Datastore::Query.new
query.kind "Greeting"

results = dataset.run query
results.each do |entity|
  puts entity
end
# [END all]
