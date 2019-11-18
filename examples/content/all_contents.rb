#####################
## all_contents.rb ##
#####################
# Enables you to obtain a list of all contents

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

# Example to list all the contents.
class AllContents
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
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to AllContents via the API and print the result.
    puts client.all_contents
  end
end
example = AllContents.new
example.run
