module Sukashi
  class Middleware

    CSS = File.read(File.expand_path('style.css', __dir__))

    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body = @app.call(env)

      if skip?(status, headers)
        return [status, headers, body]
      end

      html = ''

      body.each do |chunk|
        html << chunk
      end

      if body.respond_to?(:close)
        body.close
      end

      editor = Sukashi::HtmlEditor.new(html)
      editor.add_style(CSS)
      editor.add_watermark(Sukashi.request.text || Sukashi.config.text, class: 'sukashi')
      new_html = editor.to_html

      headers.delete('content-length')
      headers['Content-Length'] = new_html.bytesize.to_s

      [status, headers, [new_html]]
    end

    private

      def skip?(status, headers)
        if status != 200
          return true
        end

        if html_response?(headers) == false
          return true
        end

        if encoded_response?(headers)
          return true
        end

        false
      end

      def html_response?(headers)
        content_type = headers['Content-Type'] || headers['content-type']
        content_type&.include?('text/html')
      end

      def encoded_response?(headers)
        headers['Content-Encoding'] || headers['content-encoding']
      end

  end
end
