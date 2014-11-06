get '/' do
	erb :homepage
end

get '/surveys/new' do
end

post '/surveys/new' do
	p params[:survey]
	# Survey.create(params[:survey])
end