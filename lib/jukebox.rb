require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands: \n
      - help : displays this help message\n
      - list : displays a list of songs you can play\n
      - play : lets you choose a song to play\n
      - exit : exits the program"
end

def list(songs)
  songs.each_index do |i|
    puts "#{i+1}. #{songs[i]}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"

  track_pick = gets.chomp

  songs.each_index do |i|
    if i == track_pick.to_i-1
      puts "Playing #{songs[i]}"

    elsif songs[i] == track_pick
      puts "Playing #{songs[i]}"

    else 
      puts "Invalid input, please try again"

    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help()

  puts "Please enter a command:"

  input = gets.chomp

  case input.downcase
  when "help"
    help()
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit()    
  else 
    "Please enter a command:"

    input == gets.chomp
  end
end