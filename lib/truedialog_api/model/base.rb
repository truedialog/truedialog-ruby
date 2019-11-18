# Base class.
class Base
  
  # @return [Integer] The primary key of the model.
  attr_accessor :id

  # Creates the JSON structure for the account object.
  #
  # @return [JSON] The JSON structure for an account object.
  def json_
    hash = {
      "Id" => id
    }

    hash.to_json
  end
end
