 get '/homepage' do
	# @surveys = Survey.all
	erb :homepage
end

get '/surveys/new' do
end

post '/surveys/new' do
	content_type :json
	survey = Survey.create(title: params[:title])
	question = Question.create(question: params[:question], survey_id: survey.id)
	choice = Choice.create(content: params[:content], question_id: question.id)
	"hello".to_json
end

post '/questions/new' do
end

post '/choices/new' do
end

get '/question_form' do 
	erb :_question, :layout => false
end

get '/choice_form' do
	erb :_choice, :layout => false
end

get '/survey_form' do
	erb :_survey, :layout => false
end
