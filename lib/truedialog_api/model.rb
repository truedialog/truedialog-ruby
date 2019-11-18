require "truedialog_api/model/base"
require "truedialog_api/model/base_audited"
require "truedialog_api/model/soft_deletable"
require "truedialog_api/model/content"
require "truedialog_api/model/subscription"
require "truedialog_api/model/campaign"
require "truedialog_api/model/event_push_campaign"

module TrueDialogApi
  module Model
    include Base
    include BaseAudited
    include SoftDeletable
    include Content
    include Subscription
    include Campaign
    include EventPushCampaign
  end
end