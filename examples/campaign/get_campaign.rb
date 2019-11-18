#####################
## get_campaign.rb ##
#####################
# This example enables you to obtain details of a specific
# campaign.
#
# You must adjust the variable "campaign_id" to an actual, 
# valid campaign ID.

require '../../lib/truedialog_api'
require 'yaml'
# Example to get a campaign.
class GetCampaign
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
    campaign_id = "INSERT CAMPAIGN ID HERE" ## Set campaign ID
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to GetCampaign via the API and print the result.
    puts client.get_campaign(campaign_id)
  end
end
example = GetCampaign.new
example.run
