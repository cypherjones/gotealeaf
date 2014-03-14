def abel_method(little_thingie)
    little_thingie.uniq!
  end

  other_little_thingie = [1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 7]
  abel_method(other_little_thingie)

  puts other_little_thingie