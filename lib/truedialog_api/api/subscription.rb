module TrueDialogApi
  module Api
    # Subscription Api end point implementation goes here.
    # @see https://api.3seventy.com/docs/v2.0/Default/endpoints#!/subscription
    module Subscription
      # Creates a new subscription object.
      # 
      # @param payload [Hash] Body of the subscription.
      # @option payload [String] Name Subscription name.
      # @option payload [String] Label Subscription label.
      # @option payload [Integer] SubscriptionTypeId (1) Id of the subscription type.
      # @option payload [Integer] Frequency (0) Frequency of the subscription.
      # 
      # @return [Object] Newly created subscription object.
      def add_subscription(payload)
       # end_point = "/account/#{account_id}/subscription"
        post(url_("subscription"), payload)
      end

      # Returns the details for a specific subscription object.
      # 
      # @param subscription_id [Integer] Id of the subscription.
      # 
      # @return [Object] Subscription object.
      def get_subscription(subscription_id)
        get(url_("subscription", subscription_id))
      end

      # Adjusts the details of a subscription object.
      # 
      # @param subscription_id [Integer] Id of the subscription.
      # @param payload [Hash] Body of the subscription.
      # @option payload [String] Name Subscription name.
      # @option payload [String] Label Subscription label.
      # @option payload [Integer] SubscriptionTypeId (1) Id of the subscription type. 
      # @option payload [Integer] Frequency (0) Frequency of the subscription.
      # 
      # @return [Object] Modified subscription object.
      def edit_subscription(subscription_id, payload)
        put(url_("subscription", subscription_id), payload)
      end

      # Removes a subscription object.
      # 
      # @param subscription_id [Integer] Id of the subscription.
      # 
      # @return none.
      def delete_subscription(account_id, subscription_id)
        delete(url_("subscription", subscription_id))
      end

      # Get all the subscriptions assosiated with an account.
      # 
      # 
      # @return [Array<Object>] List of all the subscriptions. 
      def all_subscriptions
        get(url_("subscription"))
      end
    end
  end
end