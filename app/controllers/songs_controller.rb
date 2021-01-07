class SongsController < ApplicationController

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(strong_params)
        if @song.save
            redirect_to song_path(@song)
        else
            render :new
        end
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        if @song.update(strong_params)
            redirect_to song_path(@song)
        else
            render :edit
        end
    end

    def index
        @songs = Song.all
    end

    private

    def strong_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
