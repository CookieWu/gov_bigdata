class AnimalsController < ApplicationController
    
    def index
        
        if @animals_get.present?
        else
            @animals_get = Datataipei.get_animals
            @animals_data = JSON.parse(@animals_get.body)['result']['results']
            @animals_get = JSON.parse(@animals_get.body)
            # @animals_data = @animals_data.sort_by { |hash| hash['Build'].to_s }
            
            # @animals_data.each do |a|
            #     AnimalInfor.create!(
            #     animal_id: a['_id'],
            #     Name: a['Name'],
            #     Sex: a['Sex'],
            #     Type: a['Type'],
            #     Age: a['Age'],
            #     Variety: a['Variety'],
            #     Reason: a['Reason'],
            #     IsSterilization: a['IsSterilization'],
            #     Resettlement: a['Resettlement'],
            #     Phone: a['Phone'],
            #     Email: a['Email']
            #     # ImageName: a['ImageName']
            #     )
            # end
        end
            
        @animals_page = Kaminari.paginate_array(@animals_data).page(params[:page]).per(8)
        
        # @animals_page = AnimalInfor.all.page(params[:page]).per(8)
    end
end
