class Song
    attr_reader :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.group_by {|x| x}.keys
    end

    def self.genres
        @@genres.group_by {|x| x}.keys
    end  

    def self.genre_count
        Hash[@@genres.group_by {|x| x}.map {|k,v| [k,v.count]}]
    end

    def self.artist_count
        Hash[@@artists.group_by {|x| x}.map {|k,v| [k,v.count]}]
    end
end