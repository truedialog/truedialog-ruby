########################
## delete_campaign.rb ##
########################
# Enables you to delete a specific campaign
#
# You must edit variable "campaign_id" with an
# actual campaign ID you intend to delete.

require '../../lib/truedialog_api'
require 'yaml'

# Example to delete a campaign.
class DeleteCampaign
  def run
    # Load the configuration file (config.yml)
    config = YAML.load_file(File.expand_path("../../config.yml", __FILE__))
    # Load the account_id from config.yml
    account_id = config['account_id']
    # Load the URL from config.ymlyml
    url = config['url']
    # Load the username from config.yml
    username = config['username']
    # Load the password from config.yml
    password = config['password']
    campaign_id = "INSERT CAMPAIGN ID HERE" ## Set campaign ID 
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to DeleteCampaign via the API and print the result.
    puts client.delete_campaign(campaign_id)
  end
end
example = DeleteCampaign.new
example.run
