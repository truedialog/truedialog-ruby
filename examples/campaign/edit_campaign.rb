######################
## edit_campaign.rb ##
######################
# Enables you to edit specific campaign attributes
#
# You will need to edit variable "campaign_id" with an
# actual valid campaign ID. You must also edit everything 
# from the "payload" array below.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

# Example to edit a campaign.
class EditCampaign
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
    campaign_id = "INSERT CAMPAIGN ID HERE" ## Add campaign_id
    # Load the payload
    payload = {
      "SubscriptionId" => "INSERT SUBSCRIPTION ID HERE", ## Set subscription ID
      "Name" => "INSERT CAMPAIGN NAME HERE", ## Set campaign name 
      "CampaignTypeId" => "INSERT CAMPAIGN TYPE ID HERE", ## Set campaign ID
      "Content" => {
        "Name" => "INSERT CONTENT NAME HERE", ## Set content name 
        "Description" => "INSERT CONTENT DESCRIPTION HERE" ## Set content description 
      }
    }
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to EditCampaign via the API and print the result.
    puts client.edit_campaign(campaign_id, payload)
  end
end
example = EditCampaign.new
example.run
