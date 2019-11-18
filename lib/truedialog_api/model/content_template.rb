class ContentTemplate < BaseAudited
  attr_accessor :account_id
  attr_accessor :content_id
  attr_accessor :language_id
  attr_accessor :channel_type_id
  attr_accessor :encoding_type_id
  attr_accessor :template
  def json_
    hash = {
      "Id" => id,
      "AccountId" => account_id,
      "ContentId" => content_id,
      "LanguageId" => language_id,
      "ChannelTypeId" => channel_type_id,
      "EncodingTypeId" => encoding_type_id,
      "Template" => template
    }
    hash.to_json
  end
end