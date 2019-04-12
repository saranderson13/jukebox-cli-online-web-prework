require 'pry'

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
  # outputs instructions for the user.
  
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end


def play(songs)
  # asks the user to input a song name or number
  # then outputs the 'artist - song title'
  
  puts "Please enter a song name or number:"
  selection = gets.chomp
  
  confirm_song = ""
  songs.collect do |song|
    if selection == song
      return puts "Playing #{song}"
    elsif selection.to_i == (songs.index(song) + 1)
      return puts "Playing #{songs[selection.to_i - 1]}"
    end
  end
  puts "Invalid input, please try again"
end


def list(songs)
  # outputs a list of songs to choose from
  
  songs.each { |song| puts "#{songs.index(song) + 1}. #{song}" }
end


def exit_jukebox
  # says goodbye, and shuts down the program
  puts "Goodbye"
end


def run(songs)
  # uses helper methods to run the jukebox
  
  help
  puts "Please enter a command:"
  selection = gets.chomp
  
  while selection != "exit"
    if selection == "help"
      help
      puts "Please enter a command:"
      selection = gets.chomp
      break if selection == "exit"
    elsif selection == "list"
      list
      puts "Please enter a command:"
      selection = gets.chomp
      break if selection == "exit"
    elsif selection == "play"
      play(songs)
      puts "Please enter a command:"
      selection = gets.chomp
      break if selection == "exit"
    else 
      puts "Please enter a command:"
      selection = gets.chomp
      break if selection == "exit"
    end
  end
  exit_jukebox
end




