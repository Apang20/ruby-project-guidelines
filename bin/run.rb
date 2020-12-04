require_relative '../config/environment'
require "tty-prompt"

app = AdoptApp.new
app.run

prompt = TTY::Prompt.new
