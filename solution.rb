class Movie
  attr_accessor :title
  @@all = []

  def initialize(title)
    self.title = title
    @@all << self
  end

  def self.all
    @@all 
  end

  def self.find_by_title(title)
    self.all.detect { |v| v.title == title }
  end

  def ratings
    Rating.all.select { |r| r.movie == self}
  end

  def viewers
    self.ratings.map { |r| r.viewer }
  end

  def rating_scores
    self.ratings.map { |r| r.score }
  end

  def average_score
    self.rating_scores.inject(:+) / self.ratings.length
  end
end









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










class Viewer
  attr_accessor :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all 
    @@all
  end

  def self.find_by_name(name)
    self.all.detect { |v| v.full_name == name }
  end

  def create_rating(score, movie)
    Rating.new(self, movie, score)
  end
end

