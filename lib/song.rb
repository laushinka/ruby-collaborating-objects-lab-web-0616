require 'pry'

class Song
  attr_accessor :name, :artist
  # attr_writer :artist

  def initialize(name)
    @name = name
    # @songs = []
  end
  # 
  # def artist=(artist)
  #   new_artist = Artist.new
  #   self.artist = new_artist
  # end

  def self.new_by_filename(file)
# It must parse a filename to find the song name and artist name. (Hint: every file separates the song and artist with a " - "). Now we put those values to use.
  artist_name, song_name = file.split(" - ")
# From here, we will create a new song instance using the string we gathered from the filename.
  new_song = Song.new(song_name)
  # We need an artist instance, and assign that artist instance to the song
  # Check if the artist has existed before
  new_song.artist = Artist.find_or_create_by_name(artist_name)
  new_song
    # song = Song.new
    # file_array = file.split(" - ")
    # song_name.name = file_array[1]
    # song_name.artist.name = file_array[0]
    # song_name
  end
  # def songs
  #   @songs
  # end

end
