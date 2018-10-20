require 'sinatra'

get '/' do
	erb :index
end

post '/' do
	@username = params[:username]
	@phone = params[:phone]
	@time = params[:time]
	@title = "Thank you!"
	@message = "Dear #{@username}, we will waiting for you at #{@time}"

	f = File.open './public/users.txt', 'a'
	f.write "User: #{@username}, phone number: #{@phone}, date and time: #{@time}"
	f.close
	erb :message
end