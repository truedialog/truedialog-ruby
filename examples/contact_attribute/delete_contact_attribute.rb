#################################
## delete_contact_attribute.rb ##
#################################
# Enables you to delete a specific contact attribute
#
# You must edit variables contact_id and contact_attribute_id
# with appropriate values below.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

# Example to delete the contact attribute.
class DeleteContactAttribute
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
    contact_attribute_id = "INSERT ATTRIBUTE ID HERE" ## Set the attribute ID
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to DeleteContact via the via the API and print the result.
    puts client.delete_contact_attribute(contact_id, contact_attribute_id)
  end
end
example = DeleteContactAttribute.new
example.run
