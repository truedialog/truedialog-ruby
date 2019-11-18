# Details of a channel that messages are sent out on.
# Extends the Base class.
class Channel < Base

  # @return [Integer] The ID of channel's type.
  attr_accessor :type_id
  
  # @return [String] The channel name
  attr_accessor :name

  # @return [String] The channel's label.
  attr_accessor :label
 
  # @return [String] The channel's description.
  attr_accessor :description

  # @return [Integer] The ID of default channel's language.
  attr_accessor :default_language_id
  
  # @return [Boolean] whether channel is active or not.
  attr_accessor :is_active
  
  # @return [String] The override group.
  attr_accessor :override_group
  
  # Creates the JSON structure for the channel object.
  #
  # @return [JSON] The JSON structure for the channel object.
  
  def json_
    hash = {
      "Id" => id,
      "type" => type_id,
      "Name" => name,
      "Label" => label,
      "Description" => description,
      "DefaultLanguageId" => default_language_id,
      "IsActive" => is_active,
      "OverrideGroup" => override_group
    }
    hash.to_json
  end
end