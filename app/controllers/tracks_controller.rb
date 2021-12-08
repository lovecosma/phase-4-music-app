class TracksController < ApplicationController

    def index 
        if params[:playlist_id]
            if logged_in? 
                playlist = Playlist.find(params[:playlist_id]) 
               if playlist 
                    render json: playlist.tracks
               else
                    render json: {"error": "Playlist not found"}
               end  
            else
                render json: {"error": "Please login first"}
            end 
        else
            render json: Track.all
        end 
    end

    def show
        render json: Track.find(params[:id])
    end

end
