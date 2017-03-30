module Newsletter
  module Generators
    class Base
      attr_reader :format, :title, :phrase

      def initialize(format = :html)
        @format = format
        @title  = "Hello World"
        @phrase = "Lorem Ipsum"
      end

      def render
        name = format.to_s.capitalize
        strategy = Newsletter::Generators.const_get(name).new self
        strategy.execute
      end

      def header
        raise NotImplementedError
      end

      def content
        raise NotImplementedError
      end
    end
  end
end
