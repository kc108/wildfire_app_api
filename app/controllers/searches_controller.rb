class SearchesController < ApplicationController
    def index
        searches = current_user.searches 
        render json: searches
    end

    def update
        search = current_user.searches.find(params[:id])
        search.update(search_params)
        render json: {search: SearchSerializer.new(search)}
    end

    def create
        search = current_user.searches.build(search_params)
        search.save
        render json: {search: SearchSerializer.new(search)}
    end

    def destroy
        search = current_user.searches.find(params[:id])
        search.destroy
        render json: {}, status: :no_content
    end

    private

    def search_params
        params.require(:search).permit(:city)
    end

end