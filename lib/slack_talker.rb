class SlackTalker
   def talk
    uri = URI.parse("https://refocus-studios.slack.com/services/hooks/incoming-webhook?token=rQzaYuR893CVas0clucuyeRm")
    http = Net::HTTP.new(uri.host, uri.port)
    http.read_timeout = 30
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request = Net::HTTP::Post.new(uri.request_uri)

    request.body = "{\"username\": \"Refocus Bot\", \"text\": \"<www.google.com>This is a line of text in a channel.\\nAnd this is another line of text.\",  \"icon_emoji\": \":ghost:\"}"

    # Send synchronously

    http.request(request)
  end
end
