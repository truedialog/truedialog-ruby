#####################
## edit_contact.rb ##
#####################
# Enables you to edit a specific contact
#
# You must edit variable "contact_id" with
# an actual contact ID you want to edit.
#
# You must also edit the "payload" array to
# approriate values below.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class EditContact
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
    contact_id = "INSERT CONTACT ID HERE" ## Set contact_id
    # Load the payload
    payload = {
      "PhoneNumber" => "INSERT PHONE NUMBER HERE" ## Set phone number
#      "Email" => "person@example.com" # Set e-mail address
    }
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to EditContact via the via the API and print the result.
    puts client.edit_contact(contact_id, payload)
  end
end
example = EditContact.new
example.run
