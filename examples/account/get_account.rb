####################
## get_account.rb ##
####################
# This example enables you to obtain detailed information
# regarding a specific account.
#
# You must edit the account_id variable (below) with a
# valid account ID to obtain information on the account.

require '../../lib/truedialog_api'
require 'yaml'

class GetAccount
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
    account_id = "INSERT ACCOUNT ID HERE" # Set account ID
    # Initiate the client
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to GetAccount via the API and print the result.
    puts client.get_account(account_id)
  end
end
example = GetAccount.new
example.run
