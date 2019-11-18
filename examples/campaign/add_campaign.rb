#####################
## add_campaign.rb ##
#####################
# This example enables you to create a new campaign
#
# You must edit the payload (below) with your
# appropriate information.  You will need to edit
# edit: SubscriptionId, Name, CampaignTypeId, 
# Content Name and Content Description, respectively.

require '../../lib/truedialog_api'
require 'yaml'
require 'json'

# Example to add a new campaign.
class AddCampaign
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
      "SubscriptionId" => "INSERT SUBSCRIPTION ID HERE", ## Add subscription ID 
      "Name" => "INSERT CAMPAIGN NAME HERE", ## Add campaign name
      "CampaignTypeId" => "INSERT CAMPAIGN TYPE ID HERE", ## Add campaign ID
      "Content" => {
        "Name" => "INSERT CONTENT NAME HERE", ## Add content name
        "Description" => "INSERT CONTENT DESCRIPTION HERE" ## Add content description
      }
    }
    # Initiate the client.
    client = TrueDialogApi::Client.new(url, username, password, account_id)
    # Make a call to AddCampaign via the API and print the result.
    puts client.add_campaign(payload)
  end
end
example = AddCampaign.new
example.run
