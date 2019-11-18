module TrueDialogApi
  module Helpers
    # HTTP request module.
    module Request
      # Used to create a HTTP client with the singleton pattern.
      #  
      # @return [Object] Client object.
      def client
        @client ||= RestClient::Resource::new(@url, :user => @username, :password => @password)
      end
      # Used to make a GET request.
      # 
      # @param path [String] URL of the request.
      # 
      # @return [Object] Response object.
      def get(path)
        begin
          response =  client[path].get :accept => 'application/json'
        rescue Exception => e
          puts e.inspect
        end
      end

      # Used to make a PUT request.
      # 
      # @param path [String] URL of the request.
      # @param payload [Hash] Payload of the request.
      # 
      # @return [Object] Response object.
      def put(path, payload)
        begin
          response = client[path].put payload.to_json, :accept => 'application/json', :content_type => 'application/json'
        rescue Exception => e
          puts e.inspect
        end
      end

      # Used to make a POST request.
      # 
      # @param path [String] URL of the request.
      # @param payload [Hash] Payload of the request.
      # 
      # @return [Object] Response object.
      def post(path, payload)
        begin
          response = client[path].post payload.to_json, :accept => 'application/json', :content_type => 'application/json'
        rescue Exception => e
          puts e.inspect
        end
      end

      # Used to make a DELETE request.
      # 
      # @param path [String] URL of the request.
      # 
      # @return [Object] Response object.
      def delete(path)
        begin
          response = client[path].delete :accept => 'application/json'
        rescue Exception => e
          puts e.inspect
        end
      end
    end
  end
end