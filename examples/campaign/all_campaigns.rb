######################
## all_campaigns.rb ##
######################
# This example will obtain a list of all campaigns
# currently stored within a user account.
#
# You may edit the boolean variable "visibility".

require '../../lib/truedialog_api'
require 'yaml'

class AllCampaigns
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
    visibility = true # Set all campaigns visibility.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to AllCampaigns via the API and print the result.
    puts client.all_campaigns(visibility)
  end
end
example = AllCampaigns.new
example.run
