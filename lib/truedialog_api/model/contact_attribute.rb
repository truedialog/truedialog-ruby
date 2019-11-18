class ContactAttribute < Base
  attr_accessor :name
  attr_accessor :value
  def json_
    hash = {
      "Id" => id,
      "Name" => name,
      "value" => value
    }
    hash.to_json
  end
end