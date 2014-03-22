def shuffle arr
  arr.sort_by{rand}
end

all_songs = shuffle(Dir['../*.mp3'])

File.open 'my_tunes.m3u', 'w' do |f|
  all_songs.each do |mp3|
    f.write mp3+"\n"
  end
end

puts 'Done!'