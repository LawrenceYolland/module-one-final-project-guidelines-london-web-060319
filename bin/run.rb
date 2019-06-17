# frozen_string_literal: true

require_relative '../config/environment'

puts 'HELLO WORLD'
cli = CommandLineInterface.new

cli.greet
cli.main_menu
cli.user_choice
