module Labor
    
    $data_taipei_api_url = "http://data.taipei/opendata/datalist/apiAccess"
    
    $labor_illegal_rid = "ac5e4362-9bd6-4828-a7b9-639bd8eef84f"
    
    def self.get_labors

		labors_api_url = $data_taipei_api_url
		parameter = 'scope=resourceAquire&rid=' + $labor_illegal_rid
		res = Common.get_request(labors_api_url, parameter)
	end

end