module Common

	# common get function
	def self.get_request(url, param)

	  request_url = url 
	  request_url += '?' + param if param.present?
	  uri = URI.parse(request_url)
	  response = Net::HTTP.get_response(uri)
	end

	# common post function
	def self.send_post_request(url, parameter, api_key)

		issue = parameter

		request_url = url 
	  	request_url += '?' + 'key=' + api_key if api_key.present?
		uri = URI.parse(request_url)
		
		http = Net::HTTP.new(uri.host, uri.port)
		req = Net::HTTP::Post.new(uri, initheader = {'Content-Type' =>'application/json'})
		req.body = issue
		response = http.request(req)
	end
end