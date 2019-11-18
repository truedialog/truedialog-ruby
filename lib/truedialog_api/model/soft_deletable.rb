class SoftDeletable < BaseAudited
  attr_accessor :status_id

  def json_
    hash = {
      "Id" => id
      "StatusId" => status_id
    }

    hash.to_json
  end
end
