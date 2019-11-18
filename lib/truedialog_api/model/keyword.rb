class Keyword < SoftDeletable
  attr_accessor :account_id
  attr_accessor :channel_id
  attr_accessor :campaign_id
  attr_accessor :name
  attr_accessor :status
  attr_accessor :callback_required
  def json_
    hash = {
      "Id" => id,
      "AccountId" => account_id,
      "channel_id" => channel_id,
      "campaign_id" => campaign_id,
      "name" => name,
      "Status" => status,
      "callback_required" => callback_required
    }
    hash.to_json
  end
end