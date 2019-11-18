# Details of a callback TrueDialog will make when an event occurs.
# Callbacks provide a way to greatly customize the behavior of a campaign.
# Extends the Base class.
class Callback < Base

  # @return [Integer] The account_id to which this callback occurs. 
  attr_accessor :account_id

  # @return [Integer] The type of event which will trigger the callback. Different callback types will send different sets of data. 
  attr_accessor :callback_type

  # @return [String] The URL that will be called when the callback type event occurs.
  attr_accessor :url
  
  # @return [Boolean] The control to turn on/off the callback.
  attr_accessor :is_active

  # Creates the JSON structure for the callback object.
  #
  # @return [JSON] The JSON structure for an callback object.
  def json_
    hash = {
      "Id" => id,
      "accountId" => account_id,
      "CallbackType" => callback_type,
      "Url" => url,
      "Active" => is_active
    }
    hash.to_json
  end
end