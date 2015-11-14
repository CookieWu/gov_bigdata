class AnimalsController < ApplicationController
    
    def index
        
        if @animals_get.present?
        else
            @animals_get = Datataipei.get_animals
            @animals_data = JSON.parse(@animals_get.body)['result']['results']
            @animals_get = JSON.parse(@animals_get.body)
        end
            
        @animals_page = Kaminari.paginate_array(@animals_data).page(params[:page]).per(8)
    end
end
