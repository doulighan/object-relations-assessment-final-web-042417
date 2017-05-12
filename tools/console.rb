require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Viewer.new("a", "a")
p2 = Viewer.new("b", "b")
p3 = Viewer.new("c", "c")

m1 = Movie.new("movie1")
m2 = Movie.new("movie2")
m3 = Movie.new("movie3")

p1.create_rating(5, m1)
p1.create_rating(2, m2)
p2.create_rating(8, m3)
p3.create_rating(9, m3)
p1.create_rating(1, m3)



Pry.start
