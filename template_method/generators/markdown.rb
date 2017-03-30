module Newsletter
  module Generators
    class Markdown < Generator
      def header
        "# Hello World"
      end

      def content
        "Lorem Ipsum"
      end
    end
  end
end
