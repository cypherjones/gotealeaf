def my_method(thing)
  thing.uniq!
end

outer_thing = [1, 2, 3, 4, 5, 5]
my_method(outer_thing)

puts outer_thing