class PlaylistsController < ApplicationController


    def index

       if params[:user_id]
            if current_user && current_user.id === params[:user_id].to_i
                render json: current_user.playlists
            else
                render json: {error: "Not logged in."} 
            end
       else
           render json: Playlist.all
       end
        
    end



end
