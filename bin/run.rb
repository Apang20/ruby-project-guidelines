require_relative '../config/environment'
require "tty-prompt"

app = AdoptApp.new
app.run

prompt = TTY::Prompt.new

# puts "Let's adopt some pups!"
