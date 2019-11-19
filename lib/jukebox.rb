# Add your code here

# Add your code here

# Add your code here
def help
  puts /I accept the following commands:/
  puts /- help : displays this help message/
  puts /- list : displays a list of songs you can play/
  puts /- play : lets you choose a song to play/
  puts /- exit : exits this program/
end

def list(songs)
  songs.each_with_index do |song, index|
    new_index = index + 1
    puts "/#{new_index}. #{song}"
  end
  # songs = [
  #   "1. Phoenix - 1901",
  #   "2. Tokyo Police Club - Wait Up",
  #   "3. Sufjan Stevens - Too Much",
  #   "4. The Naked and the Famous - Young Blood",
  #   "5. (Far From) Home - Tiga",
  #   "6. The Cults - Abducted",
  #   "7. Phoenix - Consolation Prizes",
  #   "8. Harry Chapman - Cats in the Cradle",
  #   "9. Amos Lee - Keep It Loose, Keep It Tight"
  # ]
end

def help
  puts /I accept the following commands:/
  puts /- help : displays this help message/
  puts /- list : displays a list of songs you can play/
  puts /- play : lets you choose a song to play/
  puts /- exit : exits this program/
end

def list(songs)
  songs.each_with_index do |song, index|
    new_index = index + 1
    puts "/#{new_index}. #{song}"
  end
  # songs = [
  #   "1. Phoenix - 1901",
  #   "2. Tokyo Police Club - Wait Up",
  #   "3. Sufjan Stevens - Too Much",
  #   "4. The Naked and the Famous - Young Blood",
  #   "5. (Far From) Home - Tiga",
  #   "6. The Cults - Abducted",
  #   "7. Phoenix - Consolation Prizes",
  #   "8. Harry Chapman - Cats in the Cradle",
  #   "9. Amos Lee - Keep It Loose, Keep It Tight"
  # ]
end

def play(songs)
  puts /Please enter a song name or number:/
  input = gets.chomp
  if songs.find{|song| song == input}
      puts "Playing #{input}"
  elsif input.to_i >= 1 && input.to_i <= songs.length
    songs.each_with_index do |song, index|
      if input.to_i == index + 1
        puts "Playing #{song}"
      end
    end
  else
      puts /Invalid input, please try again/
  end
  #

end

def exit_jukebox
  puts "Goodbye"
end
