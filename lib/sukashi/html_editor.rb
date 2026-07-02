module Sukashi
  class HtmlEditor

    def initialize(html)
      @html = html
      @doc = Nokogiri::HTML5(html)
    end

    def add_watermark(text)
      @doc.at_css('body').add_child("<div>#{text}</div>")
    end

    def to_html
      @doc.to_html
    end

  end
end
