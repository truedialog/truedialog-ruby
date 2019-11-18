#######################
## delete_account.rb ##
#######################
# This example enables you to delete an account.

require '../../lib/truedialog_api'
require 'yaml'

# Example to delete an account.
class DeleteAccount
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
    account_id =  # Set the account ID 
    # Initiate the client
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to DeleteAccount via the API and print the result.
    puts client.delete_account(account_id)
  end
end
example = DeleteAccount.new
example.run
