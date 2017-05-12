class Rating
  attr_accessor :score, :viewer, :movie
  @@all = []

  def initialize(viewer, movie, score)
    @score = score
    @movie = movie
    @viewer = viewer
    @@all << self
  end

  def self.all 
    @@all
  end
end
