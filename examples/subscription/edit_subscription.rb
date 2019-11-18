##########################
## edit_subscription.rb ##
##########################
# This example enables you to edit a subscription
#
# You must edit the "payload" array and the 
# variable "subscription_id" to appropriate
# values below.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class EditSubscription
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
      "Name" => "INSERT NAME HERE", ## Set name
      "Label" =>"INSERT LABEL HERE" ## Set label
    }
    subscription_id = "INSERT SUBSCRIPTION ID HERE" ## Set the subscription ID
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to EditSubscription via the API and print the result.
    puts client.edit_subscription(subscription_id, payload)
  end
end
example = EditSubscription.new
example.run
