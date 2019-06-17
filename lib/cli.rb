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

end