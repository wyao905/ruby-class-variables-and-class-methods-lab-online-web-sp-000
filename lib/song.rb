class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
  end
  
  def self.genres
    list = []
    @@genres.each do |genre|
      if !list.include?(genre)
        list << genre
      end
    end
    return list
  end
end