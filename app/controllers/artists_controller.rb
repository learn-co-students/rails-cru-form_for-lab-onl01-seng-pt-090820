class ArtistsController < ApplicationController

    def new
        @artist = Artist.new
    end

    def create
        artist = Artist.new(artist_params)
        artist.save

        redirect_to artist_path(artist)
    end

    def show
        current_artist
    end

    def edit
        current_artist
    end

    def update
        artist = current_artist
        artist.update(artist_params)

        redirect_to artist_path(artist)
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def current_artist
        @artist = Artist.find_by(id: params[:id])
    end

end
