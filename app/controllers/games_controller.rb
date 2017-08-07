require 'longest_word.rb'

class GamesController < ApplicationController

#if I have a variable e.g. @random_word in the method start it is ONLY AVAILABLE in the
#view of start.html.erb. So if I also want to access the @random_word in the e.g.
#second_step view there are two options:
#1) I create a hidden field in the start.html.erb like this:
#  <input type="hidden" name="start_time" value="<%Time.now%>">
#like that I can access it with the params!
#2)creating a session-variable like that on this page here with session[:xxxxxxx] = Time.now
#a session-variable is stored on the hard-drive so I have to be careful that it is always
#correctly overritten. So maybe better do a hidden field!

def start
  @random_word = (Array.new(5) { ('A'..'Z').to_a.sample }).join("")
  #session[:start_time] = Time.now

end


def second_step
  @guess = params[:guess]
  @start_time = params[:start_time]
  #session[:start_time]
  @end_time = Time.now
  @grid = params[:grid]
  @result = run_game(@guess, @grid, @start_time.to_i, @end_time.to_i)
end


end
