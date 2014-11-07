get '/homepage' do
	@surveys = Survey.all
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

post '/choices/new' do
	# Choice.create(content: params[:content])
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  @questions = @survey.questions
  erb :take_survey
end
