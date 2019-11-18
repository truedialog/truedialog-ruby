class Contact < SoftDeletable
  # @return [Integer] The account that this contact belongs to.
  attr_accessor :account_id

  # @return [String] Mobile number, if available.
  attr_accessor :phone_number

  # @return [String] E-mail address, if available.
  attr_accessor :email

  # @return [List] List of attributes set on this contact.
  attr_accessor :attributes

  ##
  # List of subscription details for this contact.
  #
  # :yields: list
  attr_accessor :subscriptions

  def json_
    hash = {
      "Id" => id,
      "AccountId" => account_id,
      "PhoneNumber" => phone_number,
      "Email" => email,
      "Attributes" => attributes,
      "Subscriptions" => subscriptions
    }

    hash.to_json
  end
end
