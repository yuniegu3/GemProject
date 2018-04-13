require "sinatra"
require "unirest"
require "rubyjokes"



#index route hello world
get '/' do
	erb :index
end


#Dynamic Route
get '/:type' do
	if params[:type] == 'nerdy'
		@nerdy = RubyJoke.new
		erb :nerdy
	elsif params[:type] == 'nsfw'
		@nsfw = RubyJoke.new
		erb :nsfw
	elsif params[:type] == 'surprise'
		@nerdy = RubyJoke.new
		@nsfw = RubyJoke.new
		x = rand 1..2
		if x == 1 
			erb :nsfw 
		else
			erb :nerdy
		end

	end
end


