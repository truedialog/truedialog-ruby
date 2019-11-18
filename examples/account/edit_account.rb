#####################
## edit_account.rb ##
#####################
# This example enables you to edit an account attribute.
#
# You must edit the payload (below) with your
# appropriate information.  You will need to edit:
# ParentId, Name and Attributes, respectively.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class EditAccount
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
    #account_id =  # Load account_id  
    # Set the payload
    payload = {
      "ParentId" => "INSERT PARENTID HERE", # Add parent ID
      "Name" => "INSERT ACCOUNT NAME HERE", # Add name
      "Attributes" => "INSERT ACCOUNT ATTRIBUTES HERE" # Add attributes
    }
    # Initiate the client
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to EditAccount via the API and print the result.
    puts client.edit_account(account_id, payload)
  end
end
example = EditAccount.new
example.run
