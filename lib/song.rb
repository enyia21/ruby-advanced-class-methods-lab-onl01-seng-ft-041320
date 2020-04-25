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
end
