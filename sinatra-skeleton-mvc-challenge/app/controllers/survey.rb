get '/homepage' do
	@surveys = Survey.all
	erb :homepage
end

get '/surveys/new' do
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

post '/surveys/new' do
  p "asdfsadfdsfasdfdsf"
  choice_ids = params.keys
  choice_ids.each do |id|
    Answer.create(choice_id: id)
  end
  redirect '/'
end

get "/surveys/:id/view_results" do
  @survey = Survey.find(params[:id])
  @questions = @survey.questions
  erb :view_results
end
