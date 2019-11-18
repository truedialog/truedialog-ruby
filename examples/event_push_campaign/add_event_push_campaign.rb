################################
## add_event_push_campaign.rb ##
################################
# Enables you to push a new event campaign
#
# You must edit the "payload" array to appropriate
# values below.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

# Example to push a new event campaign.
class AddEventPushCampaign
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
      "ChannelId" => "INSERT CHANNEL ID HERE", ## Set channel ID
      "CampaignId" => "INSERT CAMPAIGN ID HERE", ## Set campaign ID
      "Targets" =>  "INSERT TARGETS HERE"## Set targets
    }
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to AddEventPushCampaign via the API and print the result.
    puts client.add_event_push_campaign(payload)
  end
end
example = AddEventPushCampaign.new
example.run
