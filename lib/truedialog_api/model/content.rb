class Content < BaseAudited
  attr_accessor :account_id
  attr_accessor :name
  attr_accessor :description
  attr_accessor :templates
  def json_
    hash = {
      "Id" => id,
      "AccountId" => account_id,
      "Name" => name,
      "Description" => description,
      "Templates" => templates
    }
    hash.to_json
  end
end