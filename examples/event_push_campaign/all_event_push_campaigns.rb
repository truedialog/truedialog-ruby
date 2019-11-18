#################################
## all_event_push_campaigns.rb ##
#################################
# Enables you to list all pushed event campaigns

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class AllEventPushCampaign
  def run
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
    # Make a call to AllEventPushCampaign via the API and print the result.
    puts client.all_event_push_campaigns
  end
end
example = AllEventPushCampaign.new
example.run
