module TrueDialogApi
  module Api
    # Contact Attribute API end point implementation. 
	# See: https://jsapi.apiary.io/apis/truedialogapidocumentation/reference/contact-management/contact-attribute.html
    module ContactAttribute

      # Lists all attributes on a contact as a set of name value pairs.
      # 
      # @param contact_id [Integer] The contact to which the attributes belong.
      # 
      # @return [Array<Object>] List all attributes.
      def all_contact_attributes(contact_id)
        path = url_("contact", contact_id, "attribute")
        get(path)
      end

      # Gets the value for a specific attribute.
      # 
      # @param contact_id [Integer] The contact to which the property belongs.
      # @param contact_attribute_id [Integer] The name (or attribute defintion ID) of the attribute to get.
      # 
      # @return [Object] Contract Attribute value.
      def get_contact_attribute(contact_id, contact_attribute_id)
        path = url_("contact", contact_id, "attribute", contact_attribute_id)
        get(path)
      end

      # Removes a specific attribute data item.
      # 
      # @param contact_id [Integer] The contact to which the property belongs.
      # @param contact_attribute_id [Integer] The name (or attribute defintion ID) of the attribute to get.
      # 
      # @return none.
      def delete_contact_attribute(contact_id, contact_attribute_id)
        path = url_("contact", contact_id, "attribute", contact_attribute_id)
        delete(path)
      end

      # Creates a specific attribute item on a contact.
      # 
      # @param contact_id [Integer] The contact to which the property belongs.
      # @param contact_attribute_id [Integer] The name (or attribute defintion ID) of the attribute to get.
      # @param value [String] The value for the attribute.
      # 
      # @return [Object] Newly created contact attribute object.
      def add_contact_attribute(contact_id, contact_attribute_id, value)
        post(url_("contact", contact_id, "attribute", contact_attribute_id),value)
      end

      # Updates a specific attribute item on a contact.
      # 
      # @param contact_id [Integer] The contact to which the property belongs.
      # @param attribute_id [Integer] The name (or attribute defintion ID) of the attribute to get.
      # @param value [String] The value for the attribute.
      # 
      # @return [Object] Updated contact attribute object.
      def edit_contact_attribute(contact_id, contact_attribute_id, value)
        put(url_("contact", contact_id, "attribute", contact_attribute_id), value)
      end
    end
  end
end
