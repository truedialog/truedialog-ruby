class Subscription < SoftDeletable
  attr_accessor :account_id
  attr_accessor :name
  attr_accessor :label
  attr_accessor :subscription_type_id
  attr_accessor :frequency

  def initialize
    @frequency = 30
  end
  def json_
    hash = {
      "Id" => id,
      "AccountId" => account_id,
      "Name" => name,
      "Label" => label,
      "SubscriptionTypeId" => subscription_type_id,
      "Frequency" => frequency
    }
    hash.to_json
  end
end