#####################
## all_accounts.rb ##
#####################
# This example enables you to list all accounts
# associated with a particular account ID.

require '../../lib/truedialog_api'
require 'yaml'

class AllAccounts
  def run
    # Load the configuration file (config.yml)
    config = YAML.load_file(File.expand_path("../../config.yml", __FILE__))
    # Load the account_id from config.yml
    account_id = config['account_id']
    # Load the URL from config.ymlyml
    url = config['url']
    # Load the username from config.yml
    username = config['username']
    # Load the password from config.yml
    password = config['password']
    # Initiate the client
    inactive = true  # Set to true to get all accounts, active and inactive. 
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to AllAccounts via the API and print the result.
    puts client.all_accounts(inactive)
  end
end
example = AllAccounts.new
example.run
