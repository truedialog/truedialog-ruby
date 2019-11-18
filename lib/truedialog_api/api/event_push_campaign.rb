module TrueDialogApi
  module Api
    module EventPushCampaign

      # Gets the details for a specific push campaign event.
      #
      # @param event_id [Integer] The specific event to get.
      # 
      # @return [Object] Event object.
      def get_event_push_campaign(event_id)
        get(url_("event-pushcampaign"), event_id)
      end

      # Pushes a campaign to a list of phone numbers.
      # 
      # @param payload [Hash] Body of the event campaign.
      # @option payload [Integer] ChannelId The channel to send the SMS out.
      # @option payload [Array<Integer>] ChannelIds A list of channel to send the message out on.
      # @option payload [Array<Integer>] Targets (null) A list of targets to send to. These can be a mix of phone numbers, e-mails, or contact IDs.
      # @option payload [Integer] ContactListId (null) A contact list to push to.
      # @option payload [Integer] CampaignId The campaign to push.
      # @option payload [String] Message (null) Required if campaign type is basic. Forbidden when not basic.
      # @option payload [String] From (null) Used for the e-mail channel. Can specify From address or default will be used.
      # @option payload [String] Subject (null) Subject of the e-mail.
      # @option payload [Boolean] IgnoreSingleUse Check if the event is Single Use Push Event.
      # @option payload [Boolean] ForceOptIn Opt an existing contact into the subscription if opted out.
      # @option payload [Array<String>] PhoneNumbers A list of phone numbers to send to. (DEPRECATED)
      # @option payload [Array<Integer>] ContactIds list of contacts to send the campaign to. (DEPRECATED)
      # @option payload [String] Name The name of the event.
      # @option payload [Integer] ScheduleTypeId Schedule Type Id: Now, OneTime, second, minute, hour, daily, weekly, monthly, yearly.
      # @option payload [Integer] Interval Value in seconds (0-60), minutes(0-60) or hours(1-12) if repeated after specified interval. Days of the week use a bit mask to specify when to run: 0x01 = Monday 0x02 = Tuesday 0x04 = Wednesday 0x08 = Thursday 0x10 = Friday 0x20 = Saturday 0x40 = Sunday 0x7F = Every day.
      # @option payload [Date] StartDateTime (null) Starting time for the recurring schedule. Ex: Every 15 mins from 4am to 8 am.
      # @option payload [Date] EndDateTime (null) End time for the recurring schedule. Ex: Every 15 mins from 4am to 8 am.
      # @option payload [String] DayOfWeek Specify when the recurring schedule occurs during the week. Values can be 1-7 or MON,TUE,WED,THU,FRI,SAT,SUN Multiple values can be specified using comma as delimiter. Use * for all days.
      # @option payload [String] DayOfMonth Day of month. 1-31 depending on which month. * for all months.
      # @option payload [String] Month Month :0 and 11, or by using the strings JAN, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV and DEC. * for all months.
      # @option payload [String] Year Year. 4 digit or comma delimited for multiple years. ex: 2013 or 2013,2014.
      # 
      # @return [Object] Newly created content object.
      def add_event_push_campaign(payload)
        post(url_("event-pushcampaign"), payload)
      end
      
      # Get the list of all events.
      # 
      # @return [Array<Object>] List of event objects.
      def all_event_push_campaigns
        get(url_("event-pushcampaign"))
      end
    end
  end
end