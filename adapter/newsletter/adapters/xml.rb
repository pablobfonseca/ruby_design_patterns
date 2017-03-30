module Newsletter
  module Adapters
    class Xml
      def initialize(source)
        @source = source
      end

      def parse
        xml   = Nokogiri::XML source
        title = xml.xpath("//item/title")[0].children[0].text
        body  = xml.xpath("//item/body")[0].children[0].text

        { "title" => title, "body" => body }
      end

      private
      attr_reader :source
    end
  end
end
