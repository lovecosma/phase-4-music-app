class TracksController < ApplicationController

    def index 
        cookies[:page_views] ||= 0
        cookies[:page_views] =  cookies[:page_views].to_i + 1
        render json: Track.all
    end

    def show
        render json: Track.find(params[:id])
    end

end
