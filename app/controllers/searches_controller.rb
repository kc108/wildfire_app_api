class SearchesController < ApplicationController
    def index
        searches = current_user.searches 
        render json: searches
    end
end