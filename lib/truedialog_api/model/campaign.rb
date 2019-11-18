# Details of a campaign that are sent to a contact.
# Extends the SoftDeletable class.
class Campaign < SoftDeletable
  
  # @return [Integer] The account ID to which the campaign belongs.
  attr_accessor :account_id
  
  # @return [Integer] The ID of the subscription that contacts will be opted-in to.
  attr_accessor :subscription_id
  
  # @return [String] The campaign's name (free form name).
  attr_accessor :name
  
  # @return [Integer] The campaign's type.
  attr_accessor :campaign_type_id 
  
  # @return [Integer] The ID of the content that this campaign sends.
  attr_accessor :content_id

  # @return [String] If this campaign will start a new session. If set, when the contact texts into an attached keyword or the campaign is pushed to a contact they are placed into a session. This is used by dialog campaigns to manage responses without colliding with reserved keywords. Currently, this value cannot be customized.
  attr_accessor :session
  
  # @return [String] The duration of sessions in milliseconds from start. Currently, this value cannot be customized.
  attr_accessor :session_length
  
  # @return [String] The arbitrary user data field. This an area to store free form data. The TrueDialog portal uses this field to store some UI hints.
  attr_accessor :user_data
  
  # @return [String] if the campaign is a one time use campagin. This an area to store free form data. Single use campaigns can only be sent to a contact once. If the campaign is pushed to a contact more than once, nothing is sent to that contact. If the contact texts into a keyword that is attached to a single use campaign, they are sent the contents of the single_use_content_id value.
  attr_accessor :single_use
  
  # @return [Integer] The ID of the content to send if a contact texts into a single use campaign more than once. This field is only valid for campaigns marked as single_use. This content is only sent if a contact texts into a keyword attached to the single use campaign. If the campaign is pushed to the contact, nothing is sent to them.
  attr_accessor :single_use_content_id

  # Creates the JSON structure for the campaign object.
  #
  # @return [JSON] The JSON structure for an campaign object.
  def json_
    hash = {
      "Id" => id,
      "AccountId" => account_id,
      "SubscriptionId" => subscription_id,
      "Name" => name,
      "CampaignTypeId" => campaign_type_id,
      "ContentId" => content_id,
      "Session" => session,
      "SessionLength" => session_length,
      "UserData" => user_data,
      "SingleUse" => single_use,
      "SingleUseContentId" => single_use_content_id
    }

    hash.to_json
  end
end
