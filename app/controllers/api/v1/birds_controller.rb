module Api
    module v1
        class BirdsController < ApplicationController



            
            private
            def birds_params 
                params.require(:bird).permit(:name, :image_url, :description, :likes, :adventure_id)
            end
            
        end
    end
end