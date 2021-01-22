class GenresController < ApplicationController
    
    def new
        @genre = Genre.new
    end

    def create
        genre = Genre.new(genre_params)
        genre.save

        redirect_to genre_path(genre)
    end

    def show
        current_genre
    end

    def edit
        current_genre
    end

    def update
        genre = current_genre
        genre.update(genre_params)

        redirect_to genre_path(genre)
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end

    def current_genre
        @genre = Genre.find_by(id: params[:id])
    end

end
