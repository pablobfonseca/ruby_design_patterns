require 'minitest/autorun'
require 'json'
require 'nokogiri'
require './newsletter/content'
require './newsletter/adapters/json'
require './newsletter/adapters/xml'

module Newsletter
  describe Content do
    describe 'parsing content from JSON' do
      before do
        @json = File.read File.expand_path(
          "fixtures/newsletter.json",
          File.dirname(__FILE__)
        )

        @content = Content.parse(@json, :json)
      end

      it 'parses the title' do
        @content.title.must_equal "Hello World"
      end

      it 'parses the body' do
        @content.body.must_equal "Lorem Ipsum"
      end
    end

    describe 'parsing content from an XML file' do
      before do
        @xml = File.read File.expand_path(
          "fixtures/newsletter.xml",
          File.dirname(__FILE__)
        )

        @content = Content.parse(@xml, :xml)
      end

      it 'parses the title' do
        @content.title.must_equal "Hello World"
      end

      it 'parses the body' do
        @content.body.must_equal "Lorem Ipsum"
      end
    end
  end
end
