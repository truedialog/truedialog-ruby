################################
## get_event_push_campaign.rb ##
################################
# Enables you to get pushed campaign content
#
# You must edit the variable "event_campaign_id" to
# an appropriate value below.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

class GetEventPushCampaign
  def run
    # List specified pushed campaign.
    config = YAML.load_file(File.expand_path("../../config.yml", __FILE__))
    # Load the account_id from config.yml
    account_id = config['account_id']
    # Load the URL from config.yml
    url = config['url']
    # Load the username from config.yml
    username = config['username']
    # Load the password from config.yml
    password = config['password']
    event_campaign_id = "INSERT CAMPAIGN ID HERE" ## Set campaign ID
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to GetContent via the API and print the result.
    puts client.get_content(event_campaign_id)
  end
end
example = GetEventPushCampaign.new
example.run
