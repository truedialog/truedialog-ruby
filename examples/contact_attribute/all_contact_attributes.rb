###############################
## all_contact_attributes.rb ##
###############################
# This example enables you to obtain a list of all
# of the current contact attributes.
#
# You must edit variable "contact_id" (below) with valid
# contact ID.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class AllContactAttributes
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
    contact_id = "INSERT CONTACT ID HERE" ## Set the contact ID
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to AllContactAttributes via the via the API and print the result.
    puts client.all_contact_attributes(contact_id)
  end
end
example = AllContactAttributes.new
example.run
