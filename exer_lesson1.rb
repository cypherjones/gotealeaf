a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a.select{|e| e.odd?}

a.select {|e| e % 2 == 1}