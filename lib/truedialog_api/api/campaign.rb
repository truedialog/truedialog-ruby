module TrueDialogApi
  module Api
    # Campaign API end point implementation.
    # See: https://jsapi.apiary.io/apis/truedialogapidocumentation/reference/campaign-management/campaign.html
    module Campaign

      # Gets a list of all campaigns belonging to an account.
      # 
      # @param visibility [Boolean] Toggle to display all items.
      # 
      # @return [Model#Campaign>] List all of the campaigns.
      def all_campaigns(visibility)
        end_point = url_("campaign")+"?onlyMine=#{visibility}"
        get(end_point)
      end

      # Retrieve the campaign.
      # 
      # @param campaign_id [Integer] ID of the content.
      # 
      # @return [Object] Campaign object.
      def get_campaign(campaign_id)
        get(url_("campaign", campaign_id))
      end

      # Add a new campaign.
      # 
      # @param payload [Hash] Body of the campaign.
      # @option payload [String] SubscriptionId ID of the subscription.
      # @option payload [String] Name Campaign name.
      # @option payload [Integer] CampaignTypeId (0) ID of the campaign type.
      # @option payload [Integer] ContentId (null) ID of the content.
      # @option payload [Array] Content (should be null if CampaignTypeId is 0) Contents of the campaign.
      # @option Content [String] Name Name of the content.
      # @option Content [String] Description Description of the content.
      # @option Content [Array<Object>] Templates (null) Content templates.
      # @option payload [String] UserData (null) User's data.
      # @option payload [String] SingleUse (false) Toggle to represent single use of the campaign.
      # @option payload [Array] SingleUseContentId (null) ID of the single use content.
      # @option payload [Array] Links (null) Array of links.
      # 
      # @return [Object] Newly created campaign object.
      def add_campaign(payload)
        post(url_("campaign"), payload)
      end
      
      # Delete the campaign.
      # 
      # @param account_id [Integer] ID of the account.
      # @param campaign_id [Integer] ID of the campaign.
      # 
      # @return none.
      def delete_campaign(campaign_id)
        delete(url_("campaign", campaign_id))
      end

      # Edit a campaign.
      # 
      # @param campaign_id [Integer] ID of the campaign.
      # @param payload [Hash] Body of the campaign.
      # @option payload [String] SubscriptionId ID of the subscription.
      # @option payload [String] Name Campaign name.
      # @option payload [Integer] CampaignTypeId (0) ID of the campaign type.
      # @option payload [Integer] ContentId (null) ID of the content.
      # @option payload [Array] Content (should be null if CampaignTypeId is 0) Contents of the campaign.
      # @option Content [String] Name Name of the content.
      # @option Content [String] Description Description of the content.
      # @option Content [Array<Object>] Templates (null) Content templates.
      # @option payload [String] UserData (null) User's data.
      # @option payload [String] SingleUse (false) Toggle to represent single use of the campaign.
      # @option payload [Array] SingleUseContentId (null) ID of the single use content.
      # @option payload [Array] Links (null) Array of links.
      # 
      # @return [Object] Modified campaign object.
      def edit_campaign(campaign_id, payload)
        put(url_("campaign", campaign_id), payload)
      end
    end
  end
end