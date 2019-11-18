####################
## get_contact.rb ##
####################
# This example enables you to obtain information on
# a specific contact.
#
# You must edit the variable "contact_id" with an
# actual contact ID you want to obtain.
require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class GetContact
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
    contact_id = "INSERT CONTACT ID HERE" ## Set the contact ID here.
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to GetContact via the via the API and print the result.
    puts client.get_contact(contact_id)
  end
end
example = GetContact.new
example.run
