class ArtistsController < ApplicationController
    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create 
        @artist = Artist.new(strong_params)
        if @artist.save
            redirect_to artist_path(@artist)
        else
            render :new
        end
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.find(params[:id])
        if @artist.update(strong_params)
            redirect_to artist_path(@artist)
        else
            render :upadate
        end
    end

    private

    def strong_params
        params.require(:artist).permit(:name, :bio)
    end

end
