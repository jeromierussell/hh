require 'rubygems'
require 'sinatra'

get '/' do
	@goal = do_stuff

	erb :index
end

def do_stuff
	the_time = Time.local(2013, 5, 25, 6)

	(the_time - Time.now).to_i / (24 * 60 * 60)
end
