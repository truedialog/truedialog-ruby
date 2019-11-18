require "../../lib/truedialog_api/api/content"
require "../../lib/truedialog_api/api/subscription"
require "../../lib/truedialog_api/api/campaign"
require "../../lib/truedialog_api/api/event_push_campaign"
require "../../lib/truedialog_api/api/contact"
require "../../lib/truedialog_api/api/contact_attribute"
require "../../lib/truedialog_api/api/account"

# API endpoints entry module.
module TrueDialogApi
  module Api

    # Include all of the endpoints.
    include Content
    include Subscription
    include Campaign
    include EventPushCampaign
    include Contact
    include ContactAttribute
    include Account
  end
end
