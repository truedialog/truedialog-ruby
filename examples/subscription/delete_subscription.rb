############################
## delete_subscription.rb ##
############################
# Enables you to delete the subscription
#
# You must edit the variable "subscription_id" to
# an appropriate value below.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class DeleteSubscription
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
    subscription_id = "INSERT SUBSCRIPTION ID HERE" ## Set subscription ID here.
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to DeleteSubscription via the API and print the result.
    puts client.delete_subscription(account_id, subscription_id)
  end
end
example = DeleteSubscription.new
example.run
