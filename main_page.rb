require './app'

class MainPage
  def main
    app = App.new
    exit = 0
    puts 'Welcome to school library app'

    while exit.zero?
      print '
        Please choose an option by entering a number:
        1 - List all books
        2 - List all people
        3 - Create a person
        4 - Create a book
        5 - Create a rental
        6 - List all rentals for a given person id
        7 - Exit
        '
      option = gets.chomp.to_i
      option == 7 ? exit = 1 : app.select_option(option)

    end
    puts 'Thank you for using our app'
  end
end
