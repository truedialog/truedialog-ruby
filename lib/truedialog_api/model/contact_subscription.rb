class ContactSubscription
  attr_accessor :subscription_id
  attr_accessor :sms_enabled
  attr_accessor :mms_enabled
  attr_accessor :email_enabled
  attr_accessor :voice_enabled
  def json_
    hash = {
      "Id" => id,
      "SubscriptionId" => subscription_id,
      "SmsEnabled" => sms_enabled,
      "MmsEnabled" => mms_enabled,
      "EmailEnabled" => email_enabled,
      "VoiceEnabled" => voice_enabled
    }
    hash.to_json
  end
end