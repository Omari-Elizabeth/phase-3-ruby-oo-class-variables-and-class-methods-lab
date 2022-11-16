require 'pry'
class Song
    @@count=0
    @@genres=[]
    @@artists=[]
    @@artist_count={}
    @@genre_count={}
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@artists << self.artist
        @@genres << self.genre
        
    end
    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.print_artists
        self.all.each do |song|
            @@artist = Song.artist
        end
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
    
end
forever = Song.new("forever", "you", "RnB")
fever = Song.new("fever", "u", "RnB")
puts(Song.count)
# puts(Song.genre)