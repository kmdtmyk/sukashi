module Sukashi
  class HtmlEditor

    def initialize(html)
      @html = html
      @doc = Nokogiri::HTML5(html)
    end

    def add_stylesheet(style)
      css = Nokogiri::XML::Node.new('style', @doc)
      css['type'] = 'text/css'
      css.content = style
      @doc.at('head').add_child(css)
    end

    def add_watermark(text)
      @doc.at_css('body').add_child("<div>#{text}</div>")
    end

    def to_html
      @doc.to_html
    end

  end
end
