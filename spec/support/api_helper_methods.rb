module ApiHelperMethods
  def make_http_request(endpoint, query)
    Fetcher.call(endpoint, query)
  end
end
