 get '/homepage' do
	# @surveys = Survey.all
	erb :homepage
end

get '/surveys/new' do
	erb :new_survey
end

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
