#######################
## delete_contact.rb ##
#######################
# Enables you to delete a specific contact
#
# You must edit variable "contact_id" with an actual
# contact ID you intend to delete.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

# Example to delete the contact.
class DeleteContact
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
    # Make a call to DeleteContact via the via the API and print the result.
    puts client.delete_contact(contact_id)
  end
end
example = DeleteContact.new
example.run
