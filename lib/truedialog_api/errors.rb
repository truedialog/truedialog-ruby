module TrueDialogApi
  module Errors
    class TrueDialogError < StandardError
      attr_reader :data
      def initialize(data)
        @data = data
        super
      end
    end

    class UnauthorizedError < TrueDialogError
    end
    
    class GeneralError < TrueDialogError
    end

    class AccessDeniedError < TrueDialogError
    end

    class NotFoundError < StandardError
    end

    class InformThreeSevntyError < StandardError
    end

    class UnavailableError < StandardError
    end

    class IdMissingError < StandardError
    end

    class InputFormatError < TrueDialogError
    end

    class UnknownError < StandardError
    end
  end
end