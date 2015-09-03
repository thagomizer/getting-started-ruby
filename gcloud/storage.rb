# Sample demonstrating uploading and downloading files to Cloud Storage.

# [START all]
require "gcloud"

gcloud = Gcloud.new "my-project-id", "/path/to/keyfile.json"
storage = gcloud.storage

bucket = storage.bucket "your-bucket-id"

file = bucket.create_file "local/path/to/file.txt", "destination/path/file.txt"

bucket.upload_file file
# [END all]

