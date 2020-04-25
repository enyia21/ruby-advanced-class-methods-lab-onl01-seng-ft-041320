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
    @@all<< self.new # initializes a new song
    self.all #returns teh instance of the initalized and saved song
  end
end
