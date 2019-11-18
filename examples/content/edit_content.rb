#####################
## edit_content.rb ##
#####################
# Enables you to edit content
#
# You must edit the "payload" array below, as well as 
# the variable "content_id" to appropriate values.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class EditContent
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
      "Name" => "INSERT CONTENT NAME HERE", ## Set content name
      "Description" => "INSERT CONTENT DESCRIPTION HERE" ## Set content description
    }
    content_id = "INSERT CONTENT ID HERE" ## Set content ID
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to EditContent via the API and print the result.
    puts client.edit_content(content_id, payload)
  end
end
example = EditContent.new
example.run
