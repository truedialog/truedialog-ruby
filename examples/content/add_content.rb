####################
## add_content.rb ##
####################
# Enables you to add new content
#
# You must edit the "payload" array (below) and input
# appropriate values.
require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class AddContent
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
      "Name" => "INSERT CONTENT NAME HERE", ## Set content name here.
      "Description" => "INSERT CONTENT DESCRIPTION HERE"## Set content description here.
    }
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to AddCallback via the via the API and print the result.
    puts client.add_content(payload)
  end
end
example = AddContent.new
example.run
