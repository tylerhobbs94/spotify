class MusicsController < ApplicationController
    def create
      @playlist = Playlist.find(params[:playlist_id])
      @music = @playlist.musics.create(music_params)
      redirect_to playlist_path(@playlist)
    end

    def destroy
      @playlist = Playlist.find(params[:playlist_id])
      @music = @playlist.musics.find(params[:id])
      @music.destroy
      redirect_to playlist_path(@playlist), status: 303
    end

    private
      def music_params
        params.require(:music).permit(:song, :artist, :status)
      end
  end