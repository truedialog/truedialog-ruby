# Base class for objects with audit information.
# Extends the Base class.
class BaseAudited < Base
  
  # @return [Date] The resource creation date/time.
  attr_accessor :created
  
  # @return  [Integer] The person who created the resource.
  attr_accessor :created_by
  
  # @return [Date] The date/time when the resource was modified.
  attr_accessor :modified
  
  # @return [Date] The person who modified the resource.
  attr_accessor :modified_by
  
  # Creates the JSON structure for th account object.
  #
  # @return [JSON] The JSON structure for an account object.
  def json_
    hash = {
      "Id" => id,
      "Created" => created,
      "CreatedBy" => created_by,
      "Modified" => modified,
      "ModifiedBy" => modified_by
    }

    hash.to_json
  end
end
