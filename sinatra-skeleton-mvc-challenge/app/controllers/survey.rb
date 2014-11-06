get '/' do
	erb :homepage
end

get '/surveys/new' do
end

post '/surveys/new' do
	# Survey.create(title: params[:title])
end

post '/questions/new' do
	# Question.create(question: params[:question])
end

