module Newsletter
  class Generator
    def render
      <<~EOF
      #{header}

      #{content}
      EOF
    end

    def header
      raise NotImplementedError
    end

    def content
      raise NotImplementedError
    end
  end
end
