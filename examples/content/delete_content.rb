#######################
## delete_content.rb ##
#######################
# Enables you to delete content
#
# You must edit variable "content_id" to an 
# appropriate value.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class DeleteContent
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
    content_id = "INSERT CONTENT ID HERE" ## Set your content ID here.
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to DeleteContent via the API and print the result.
    puts client.delete_content(content_id)
  end
end
example = DeleteContent.new
example.run
