module TrueDialogApi
  module Helpers
    module Url
      def url_(*args)
        base_path = "/account/#{account_id}"
        args.each do |arg|
          base_path += "/#{arg}"
        end
        return base_path
      end
    end
  end
end