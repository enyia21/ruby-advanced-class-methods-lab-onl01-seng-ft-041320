class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new # initializes a new song
    self.all << song
    song #returns the instance of the initalized and saved song
  end

  def self.new_by_name(name)
    song = self.new # creating a new instance of a song
    song.name = name # assigning the song a name by calling the getter function for name and writing the variable name to it
    song #I'm returing a song with the name attribute changed.
  end

  def song.create_by_name(song_name)
    song = self.new_by_name(song_name)
    self.all << song # shoveling a new song into the all array
    song
  end

end
