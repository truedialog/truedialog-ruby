#########################
## get_subscription.rb ##
#########################
# This example enables you to obtain details on a subscription
#
# You must edit the variable "subscription_id" to
# an appropriate value.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class GetSubscription
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
    subscription_id = "INSERT SUBSCRIPTION ID HERE" ## Set subscription ID
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to GetSubscription via the API and print the result.
    puts client.get_subscription(subscription_id)
  end
end
example = GetSubscription.new
example.run
