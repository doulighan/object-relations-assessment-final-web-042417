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
