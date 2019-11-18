###############################
## edit_contact_attribute.rb ##
###############################
# Enables you to edit a specific contact attribute
#
# You must edit variables contact_id, contact_attribute_id
# and value to appropriate values.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class EditContactAttribute
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
    contact_attribute_id = "INSERT CONTACT ATTRIBUTE ID HERE" ## Set the contact attribute ID
    value = "INSERT ATTRIBUTE VALUE HERE" ## Set attribute value
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to EditContactAttribute via the via the API and print the result.
    puts client.edit_contact_attribute(contact_id, contact_attribute_id, value)
  end
end
example = EditContactAttribute.new
example.run
