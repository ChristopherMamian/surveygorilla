
$("body").on("click", "#add_question_button", function(e) {
	e.preventDefault();

	var ajaxRequest = $.ajax ({
		url: '/question_form',
		type: 'GET',
	}).done(addFunction.bind(this))
})

function addFunction (sentBackData) {
	$('.question_partial_target').append(sentBackData);
	giveNameToQuestion();
}

function giveNameToQuestion() {
	array = document.querySelectorAll('.question_name');
	for (var i=0; i < array.length; i++) {
		$(array[i]).attr("name", i)
		console.log(array[i].name)
	}
}

$('body').on("click", "#add_choice_button", function(e){
	e.preventDefault();

	var ajaxRequest = $.ajax({
		url: '/choice_form',
		type: 'GET'
	}).done(namedFunction.bind(this))
})
	function namedFunction(sentBackData) {
		var div = this.parentNode.childNodes[1]
		$(div).append(sentBackData)
		var stuff = childNode;
		for (var i=0; i < div.stuff; i ++) {
			if (stuff[i].type === "text") {
				question_number === stuff[i].name
				debugger;
				stuff[i].attr("name", "question[" +question_number+"]"+"["+i+"]")
			};
		}
	}

$('#add_survey_button').on("click", someFunction);

function someFunction() {
	var ajax = $.ajax ({
		url: '/survey_form',
		type: 'get'
	})
	ajax.done(anotherFunction)

	function anotherFunction(sentBackData) {
		$('body').append(sentBackData);
	}
	$('#add_survey_button').off()
}



















