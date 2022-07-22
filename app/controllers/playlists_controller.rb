class PlaylistsController < ApplicationController
  before_action :authenticate

  def authenticate
    redirect_to "/sign_in" unless current_user
  end

    def index
      @playlists = Playlist.all
    end
  
    def show
      @playlist = Playlist.find(params[:id])
    end
  
    def new
      @playlist = Playlist.new
    end
  
    def create
      @playlist = Playlist.new(playlist_params)
  
      if @playlist.save
        redirect_to @playlist
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def edit
      @playlist = Playlist.find(params[:id])
    end
  
    def update
      @playlist = Playlist.find(params[:id])
  
      if @playlist.update(playlist_params)
        redirect_to @playlist
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      @playlist = Playlist.find(params[:id])
      @playlist.destroy
  
      redirect_to @playlist, status: :see_other
    end
  private
  def playlist_params
    params.require(:playlist).permit(:title, :description, :status)
  end
end
