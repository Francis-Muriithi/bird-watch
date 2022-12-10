module Api
    module v1
        class BirdsController < ApplicationController

            def create 
                bird = Bird.new(bird_params)

                if bird.save 
                    render json: BirdSerializer.new(bird).serialized_json
                else
                    render json: {error: bird.errors.messages}, status: 422
                end
            end


            def destroy
                bird= Bird.find_by(params[:id])

                if bird.destroy
                   head :no_content
                else
                    render json: {error: bird.errors.messages}, status: 422
                end
            end


            private
            def bird_params 
                params.require(:bird).permit(:name, :image_url, :description, :likes, :adventure_id)
            end
            
        end
    end
end