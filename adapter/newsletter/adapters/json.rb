module Newsletter
  module Adapters
    class Json
      def initialize(source)
        @source = source
      end

      def parse
        JSON.parse source
      end

      private
      attr_reader :source
    end
  end
end
