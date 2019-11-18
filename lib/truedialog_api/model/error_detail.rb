class ErrorDetail
  attr_accessor :error_code_id
  attr_accessor :error_message
  attr_accessor :object_type
  attr_accessor :property_name
  def json_
    hash = {
      "Id" => id,
      "ErrorCodeId" => error_code_id,
      "ErrorMessage" => error_message,
      "ObjectType" => object_type,
      "PropertyName" => property_name
    }
    hash.to_json
  end
end