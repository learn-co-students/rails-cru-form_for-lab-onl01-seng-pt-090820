class GenresController < ApplicationController
    before_action :genre_find, only: [:show, :update, :edit]

    def index
        @genres = Genre.all
    end

    def show
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_params)

        redirect_to genre_path(@genre)
    end

    def edit
    end

    def update
        @genre.update(genre_params)

        redirect_to genre_path(@genre)
    end

    private
    def genre_find
        @genre = Genre.find(params[:id])
    end

    def genre_params
        params.require(:genre).permit(:name)
    end
end