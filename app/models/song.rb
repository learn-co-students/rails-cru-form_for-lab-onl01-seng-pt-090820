class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :genre

    def my_genre
        self.genre
    end

    def my_artist
        self.artist
    end
end
