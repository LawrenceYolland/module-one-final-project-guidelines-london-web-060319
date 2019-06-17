require_relative '../config/environment'
require 'pry'

class CommandLineInterface
  def initialize
    @current_user = nil
  end

  @@user = nil

  def greet
    puts 'Welcome to the Stanley Cup Simulation, Enjoy!'
  end

  def main_menu
    puts "------------"
    puts "Please choose from the following options"
    puts "------------"
    puts "Convert Image to ASCII"
  end

  def user_choice
    input = gets.chomp
    case input
    when "Convert"
        ascii = ASCII_Image.new("/Users/pasbynumbers/Downloads/trophie_53876-25485.jpg")
        ascii.build(20)
    end
    main_menu
  end

end