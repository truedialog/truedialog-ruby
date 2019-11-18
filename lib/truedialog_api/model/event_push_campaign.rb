class EventPushCampaign < BaseAudited
  attr_accessor :account_id
  attr_accessor :name
  attr_accessor :channel_ids
  attr_accessor :targets
  attr_accessor :contacts
  attr_accessor :contact_list_id
  attr_accessor :campaign_id
  attr_accessor :from
  attr_accessor :ignore_single_use
  attr_accessor :force_opt_in
  attr_accessor :message
  attr_accessor :subject
  attr_accessor :schedule_type_id
  attr_accessor :interval
  attr_accessor :start_date_time
  attr_accessor :end_date_time
  attr_accessor :day_of_week
  attr_accessor :day_of_month
  attr_accessor :month
  attr_accessor :year
  def json_
    hash = {
      "Id" => id,
      "AccountId" => account_id,
      "Name" => name,
      "ChannelIds" => channel_ids,
      "Targets" => targets,
      "Contacts" => contacts,
      "ContactListId" => contact_list_id,
      "CampaignId" => campaign_id,
      "From" => from,
      "IgnoreSingleUse" => ignore_single_use,
      "ForceOptIn" => force_opt_in,
      "Message" => message,
      "Subject" => subject,
      "ScheduleTypeId" => schedule_type_id,
      "Interval" => interval,
      "StartDateTime" => start_date_time,
      "EndDateTime" => end_date_time,
      "DayOfWeek" => day_of_week,
      "DayOfMonth" => day_of_month,
      "Month" => month,
      "Year" => year
    }
    hash.to_json
  end
end