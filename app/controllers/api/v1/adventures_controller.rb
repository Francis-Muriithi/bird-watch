module Api
    module V1
        class AdventuresController < ApplicationController

            def index
                adventures = Adventure.all
                render json: AdventureSerializer.new(adventures, options).serialized_json
            end

            def show 
                adventure = Adventure.find_by(slug: params[:slug])
                render json: AdventureSerializer.new(adventure, options).serialized_json
            end

            def create 
                adventure = Adventure.new(adventure_params)

                if adventure.save 
                    render json: AdventureSerializer.new(adventure).serialized_json
                else
                    render json: {error: adventure.errors.messages}, status: 422
                end
            end

            def update 
                adventure = Adventure.find_by(slug: params[:slug])

                if adventure.update(adventure_params)
                    render json: AdventureSerializer.new(adventure, options).serialized_json
                else
                    render json: {error: adventure.errors.messages}, status: 422
                end
            end

            def destroy
                adventure = Adventure.find_by(slug: params[:slug])

                if adventure.destroy
                   head :no_content
                else
                    render json: {error: adventure.errors.messages}, status: 422
                end
            end

# Private Methods
        private 
        def adventure_params 
            params.require(:adventure).permit(:title, :image_url)
        end

        def options 
            @options ||= {include: %i[birds]}
        end

        end
    end
end