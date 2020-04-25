require "pry"
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

  def self.create_by_name(song_name)
    song = self.new_by_name(song_name)
    self.all << song # shoveling a new song into the all array
    song
  end

  def self.find_by_name(song_name)
    self.all.find{|song| song.name == song_name}
  end

  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name) == nil
      self.create_by_name(song_name)
    else
      self.find_by_name(song_name)
    end
  end
  def self.alphabetical
    self.all.sort_by{|song| song.name} #a song is passed in and the array is sorted with the sort by name call.
  end

  def self.new_from_filename(file_name)
    #separate the file_name string into artist and song title.
    file_info = []
    file_info = file_name.split(" - ")
    song_name = ""
    artist_name = ""
    song_name = file_info[1].delete_suffix(".mp3")
    artist_name = file_info[0]
    # binding.pry
    song = self.create
    song.artist_name = artist_name
    song.name = song_name
    song
    
    # file_info << file_name.split(" - ").collect do|info|
    #     if info.delete_suffix(".mp3")==nil ? info : info
    #   end
  end

    def self.create_from_filename(file_name)
      self.all << self.new_from_filename(file_name)
    end
end
