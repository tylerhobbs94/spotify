class PlaylistController < ApplicationController
  def index
    @user = playlist.all
  end
end
