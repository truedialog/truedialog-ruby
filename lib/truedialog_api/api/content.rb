module TrueDialogApi
  module Api
    # Content API endpoint implementation
    module Content
      # Creates a new content group.
      # 
      # @param payload [Hash] Body of the content.
      # @option payload [String] Name The name of the content.
      # @option payload [String] Description Addtional description data.
      # @option payload [Array<Object>] Templates (null) List of templates to create or update along with the content item.
      #
      # @return [Object] Newly created content object.
      def add_content(payload)
        post(url_("content"), payload)
      end

      # Gets a specific content group object.
      # 
      # @param content_id [Integer] ID of the content.
      # 
      # @return [Object] Content object.
       def get_content(content_id)
        get(url_("content", content_id))
      end

      # Updates details about a content group.
      # 
      # @param content_id [Integer] ID of the content.
      # @param payload [Hash] Body of the content.
      # @option payload [String] Name The name of the content.
      # @option payload [String] Description Addtional description data.
      # @option payload [Array<Object>] Templates (null) List of templates to create or update along with the content item.
      # 
      # @return [Object] Modified content object.
      def edit_content(content_id, payload)
        put(url_("content", content_id), payload)
      end

      # Deletes a content group.
      # 
      # @param content_id [Integer] ID of the content.
      #
      # @return none.
      def delete_content(content_id)
        delete(url_("content", content_id))
      end

      # Lists all content group objects on an account.
      # 
      # 
      # @return [Array<Object>] List all the content. 
      def all_contents
        get(url_("content"))
      end  
    end
  end
end