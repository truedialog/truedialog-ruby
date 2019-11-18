####################
## add_account.rb ##
####################
# This example enables you to add a new account.
#
# You must edit the payload (below) with your
# appropriate information.  You will need to
# edit: ParentId and Name, respectively.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class AddAccount
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
      "ParentId" => "PARENT ID GOES HERE", # Add parent ID
      "Name" => "ACCOUNT NAME GOES HERE" # Add name
    }
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to AddAccount via the API and print the result.
    puts client.add_account(payload)
  end
end
example = AddAccount.new
example.run
