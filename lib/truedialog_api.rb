#8/4/2019: Changed namespace from 370 to TD

require 'rest-client'
require '../../lib/truedialog_api/version'
require '../../lib/truedialog_api/helpers/request'
require '../../lib/truedialog_api/helpers/url'
require '../../lib/truedialog_api/api'

module TrueDialogApi

  # TrueDialogApi client class.
  class Client
    # Include Request Module globally.
    include Helpers::Request
    include Helpers::Url

    attr_reader :username, :password, :url, :account_id

    include Api

    # Constructor for the client.
    # 
    # @param url [String] Base URL of the API.
    # @param username [String] API Username.
    # @param password [String] API password.
    # @param account_id [Integer] Account ID.
    # 
    # @return [TrueDialogApi::Client] TrueDialogApi client.
    def initialize(url, username, password, account_id)
      @url = url
      @username = username
      @password = password
      @account_id = account_id
    end
  end
end
