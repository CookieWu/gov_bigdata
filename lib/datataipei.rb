module Datataipei
    
    $data_taipei_api_url = "http://data.taipei/opendata/datalist/apiAccess"
    
    $animail_adopt_rid = "f4a75ba9-7721-4363-884d-c3820b0b917c"
    
    def self.get_animals

		animals_api_url = $data_taipei_api_url
		parameter = 'scope=resourceAquire&rid=' + $animail_adopt_rid
		res = Common.get_request(animals_api_url, parameter)
	end

end