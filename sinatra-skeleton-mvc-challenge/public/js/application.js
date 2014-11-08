 
// $("body").on("click", "#add_question_button", function(e) {
// 	e.preventDefault();

// 	var ajaxRequest = $.ajax ({
// 		url: '/question_form',
// 		type: 'GET',
// 	}).done(addFunction.bind(this))
// })

// function addFunction (sentBackData) {
// 	$('.question_partial_target').append(sentBackData);
// 	var question_counter = $('.question-container').length + 1;
// 	var replace = $(sentBackData).find('input[name="question[]"]').attr("name", "question[" +new_name + "]")
// 	console.log(replace)
// 	// console.log(replace)
// 	$("<input type='text' name='question[]' placeholder='Question'>").replaceWith(replace);

// 	// console.log(sentBackData)
// 	// console.log("counter: " + question_counter)
	
// 	// console.log(replace)

// 	// $('.question_partial_target').append(sentBackData)
// 	// console.log(sentBackData)
// 	// var new_name = $('.question-container').length
// 	// console.log(new_name)
// 	// var new_name = $('.container .container2').children("input").length
// 	// var updated_num_name = $(sentBackData).find('input[name="question[]"]').attr("name", "question[" +new_name + "]")
// 	// console.log(updated_num_name)
// 	// $('.question_partial_target').append(sentBackData)	
		
// }

// $('body').on("click", "#add_choice_button", function(e){
// 	e.preventDefault();
	
// 	var ajaxRequest = $.ajax({
// 		url: '/choice_form',
// 		type: 'GET'
// 	}).done(namedFunction.bind(this))
// })
// 	function namedFunction(sentBackData) {
// 		var div = this.parentNode;
// 		$(div).append(sentBackData)
// 	}


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

// $(function(){
// 	$("#draggable").draggable();
// })
























