####################
## add_contact.rb ##
####################
# This example enables you to add a new contact
#
# You must edit the "payload" array (below) with
# appropriate values.
#
# Please note: Telephone numbers must be prefixed
# with a plus sign.  Example: +15555551212

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

# Example to add a new contact.
class AddContact
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
    # Set the payload
    payload = {
      "PhoneNumber" => "INSERT PHONE NUMBER HERE" ## Set phone number
#     "Email" => "person@example.com"  ## Set e-mail address
    }
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to AddContact via the via the API and print the result.
    puts client.add_contact(payload)
  end
end
example = AddContact.new
example.run
