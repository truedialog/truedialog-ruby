module TrueDialogApi
  module Api
    # Contact API end point implementation
    # See: https://jsapi.apiary.io/apis/truedialogapidocumentation/reference/contact-management/contact.html
    module Contact

      # Obtains a list of contacts for a specific account.
      # 
      # @return [Array<Object>] List of contacts.
      def all_contacts
        get(url_("contact"))
      end

      # Gets the details for a specific contact.
      # 
      # @param contact_id [Integer] The ID of the contact.
      # 
      # @return [Object] Contact object.
      def get_contact(contact_id)
        get(url_("contact", contact_id))
      end

      # Creates a new contact for the given account.
      # 
      # @param payload [Hash] Payload of the contact.
      # @option payload [String] PhoneNumber (null, if Email is present) Mobile number if available.
      # @option payload [String] Email (null, if PhoneNumber is present) E-mail address of the contact.
      # @option payload [Array<Object>] Subscriptions (null) List of subscriptions this contact should be opted-in to.
      # @option payload [Array<Object>] Attributes (null) List of attributes to set for this contact.
      # 
      # @return [Object] Newly created contact object.
      def add_contact(payload)
        post(url_("contact"), payload)
      end

      # Updates a contact with the newly provided information.
      # 
      # @param contact_id [Integer] The ID of the contact to update.
      # @param payload [Hash] Payload of the contact.
      # @option payload [String] PhoneNumber (null, if Email is present) Mobile number if available.
      # @option payload [String] Email (null, if PhoneNumber is present) E-mail address of the contact.
      # @option payload [Array<Object>] Subscriptions (null) List of subscriptions this contact should be opted-in to.
      # @option payload [Array<Object>] Attributes (null) List of attributes to set for this contact.
      # 
      # @return [Object] Modified contact object.
      def edit_contact(contact_id, payload)
        post(url_("contact", contact_id), payload)
      end

      # Does not actually delete the contact, but removes all active subscriptions 
	  # that contact is participating in.
      # 
      # @param contact_id [Integer] ID of the contact to remove.
      # 
      # @return none.
      def delete_contact(contact_id)
        delete(url_("contact", contact_id))
      end
    end
  end
end
