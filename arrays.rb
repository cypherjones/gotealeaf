title = 'Table of Contents'
chapters = [["I'm bored",1],["Find Something to Do",22],["Learnign to Read",38]]
puts title.center(50)
puts
chapters.each_with_index do |chap, idx|
	name, page = chap
	chap_num = idx + 1
	beginning = "Chapter #{chap_num}: #{name}"
	ending = "page #{page}"
	puts beginning.ljust(30) + ending.rjust(20)
end