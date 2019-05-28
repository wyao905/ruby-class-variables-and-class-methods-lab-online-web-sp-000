class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.genres
    list = []
    @@genres.each {|genre| list << genre if !list.include?(genre)}
    return list
  end
  
  def self.artists
    list = []
    @@artists.each {|artist| list << artist if !list.include?(artist)}
    return list
  end
  
  def self.genre_count
    count = {}
    @@genres.each do |genre|
      if count.values.include?(genre)
        count[genre] += 1
      else
        count[genre] = 1
      end
    end
  end
end