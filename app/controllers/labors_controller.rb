class LaborsController < ApplicationController
    
    def index
        
        @labors_get = Labor.get_labors
        @labors_data = JSON.parse(@labors_get.body)['result']['results']
        @labors_get = JSON.parse(@labors_get.body)
        
        @labors_data = @labors_data.sort_by { |hash| hash['處分日期'].to_s }.reverse
            
        @labors_data = Kaminari.paginate_array(@labors_data).page(params[:page]).per(12)
    end
    
end
