require_relative 'app'

# Display options for the user to choose from
def show_options
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

# Main loop for user interaction
def prompt
  puts 'Welcome to the School Library App!'
  loop do
    show_options
    option = gets.chomp.to_i
    break if option == 7

    