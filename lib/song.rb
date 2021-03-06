class Song 
    @@count = 0
    @@artists = []
    @@genres = []


    attr_accessor :name, :artist, :genre

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@artists << @artist
        @@genres  << @genre

        @@count += 1
    end 

    def self.count 
        @@count
    end 
    def self.artists
        @@artists.uniq 
    end 
    def self.genres 
        @@genres.uniq
    end 
    def self.genre_count
        hash = {}
        l = @@genres.count
        @@genres.each do |element|
            if hash.has_key?(element)
               hash[element] += 1
            else 
                hash[element] = 1
            end 
        end 
        hash
    end 
    def self.artist_count
        hash = {}
        l = @@artists.count
        @@artists.each do |element|
            if hash.has_key?(element)
               hash[element] += 1
            else 
                hash[element] = 1
            end 
        end 
        hash
    end 
end 