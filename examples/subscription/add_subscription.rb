#########################
## add_subscription.rb ##
#########################
# Enables you to add a new subscription
#
# You must edit the "payload" array below to
# appropriate values.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class AddSubscription
  def run
    # Load the configuration file (config.yml)
    config = YAML.load_file(File.expand_path("../../config.yml", __FILE__))
    # Load the account_id from config.yml
    account_id = config['account_id']
    # Load the URL from config.yml
    url = config['url']
    # Load the username from config.yml
    username = config['username']
    # Load the password from config.yml
    password = config['password']
    # Load the payload
    payload = {
      "Name" => "INSERT NAME HERE",## Set name
      "Label" => "INSERT LABEL HERE" ## Set label
    }
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to AddSubscription via the API and print the result.
    puts client.add_subscription(payload)
  end
end
example = AddSubscription.new
example.run
