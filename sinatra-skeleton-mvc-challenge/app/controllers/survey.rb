
 get '/homepage' do
	@surveys = Survey.all
	erb :homepage
end

get '/surveys/new' do
	erb :new_survey
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

post '/surveys/answer' do
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

post '/surveys/new' do
	survey = Survey.create(title: params[:title])
	question = Question.create(question: params[:question], survey_id: survey.id)
	choice = Choice.create(content: params[:content], question_id: question.id)

end

get 'surveys/:survey_id/question_form/:question_id' do
	erb :_question, :layout => false
end

get '/choice_form' do
	erb :_choice, :layout => false
end

get '/survey_form' do
	erb :_survey, :layout => false
end
