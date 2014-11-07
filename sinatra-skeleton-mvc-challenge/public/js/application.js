 
$("#add_question_button").on("click", function(e) {
	e.preventDefault();
	var ajaxRequest = $.ajax ({
		url: '/question_form',
		type: 'GET',
	}).done(function(sentBackData) {
		$('.question_partial_target').append(sentBackData)	
	})
})

$('body').on("click", "#add_choice_button", function(e){
	e.preventDefault();
	
	var ajaxRequest = $.ajax({
		url: '/choice_form',
		type: 'GET'
	}).done(namedFunction.bind(this))
})
	function namedFunction(sentBackData) {
		var div = this.parentNode;
		$(div).append(sentBackData)
	}











$('some-button').on("click", someFunction);

function someFunction() {
	$.ajax ({
		url: '/survey_form'
		
	})
	
}








































