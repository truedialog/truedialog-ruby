module TrueDialogApi
  # Account API end point implementation.
  # See: https://jsapi.apiary.io/apis/truedialogapidocumentation/reference/account-administration/account.html
  module Account

    # List of all accounts that exist for the user.
    # 
    # @param inactive [Boolean] Set to true to get all accounts (active and inactive). (OPTIONAL)
    # 
    # @return [Array<Object>] List of accounts that exist for the user currently logged in.
    def all_accounts(inactive=true)
      get("/account?inactive#{inactive}")
    end

    # Gets detailed information about a specific account.
    # 
    # @param account_id [Integer] The ID of the account to retrieve.
    # 
    # @return [Object] Account object.
    def get_account(account_id)
      get("/account/#{account_id}")
    end

    # Creates a new account in the system with the specified details.
    # 
    # @param payload [Hash] Payload of the account.
    # @option payload [String] Name The name of the account.
    # @option payload [Integer] ParentId The identifier of the account that is the parent of this account.
    # @option payload [Array<Integer>] Channels (null) Optional list of channels to allow the contact to use.
    # @option payload [Array<Object>] Attributes (null) List of attributes to set for this account.
    # 
    # @return [Object] Account object.
    def add_account(payload)
      post(url_, payload)
    end

    # Edit the account in the system with the specified details.
    # 
    # @param account_id [Integer] ID of the account.
    # @param payload [Hash] Payload of the account.
    # @option payload [String] Name The name of the account.
    # @option payload [Integer] ParentId The identifier of the account that is the parent of this account.
    # @option payload [Array<Integer>] Channels (null) Optional list of channels to allow the contact to use.
    # @option payload [Array<Object>] Attributes (null) List of attributes to set for this account.
    # 
    # @return [Object] Modified account object.
    def edit_account(account_id, payload)
      put("/account/#{account_id}", payload)
    end
    
    # Removes a given account from the system. Note that this does not actually remove the account record, 
	# but rather changes the status to inactive.
    # 
    # @param account_id [Integer] The ID of the account to retrieve.
    # 
    # @return [Object] none.
    def delete_account(account_id)
      delete("account/#{account_id}")
    end
  end
end