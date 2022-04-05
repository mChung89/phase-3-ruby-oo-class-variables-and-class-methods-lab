require'pry'
class Song
    attr_reader :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.genre_count
        histogram = {}
        @@genres.each do |genre|
            if histogram[genre]
                histogram[genre] += 1
            else 
                histogram[genre] = 1
            end
        end
    histogram
    end

    def self.artist_count
        histogram = {}
        @@artists.each do |artist|
            if histogram[artist]
                histogram[artist] += 1
            else 
                histogram[artist] = 1
            end
        end
    histogram
    end
end