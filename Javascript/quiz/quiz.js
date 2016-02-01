var responses = [];
var user = { };

function question1() {
	var name = prompt('what is your name?');
	user.name = name;
}

question1();

function question2() {
	var numeric = prompt("is 5 > 4");
	var answer = false;
	if (numeric.toLowerCase() === 'yes') {
		answer === true
	}
	else if (numeric.toLowerCase() === 'no') {
		answer === false
	}
	else { 
		alert("Please answer 'yes' or 'no'."); 
		return question2();
	}
	responses.push(answer);
}

question2();

function question3() {
	var answer = false;
	var real = prompt("What is real, the three, the monster, the magician or the future?");
	real = real.toLowerCase();
	switch(real) {
		case 'the three':
			answer = true;
		break

		case 'the monster':
			answer = false;
		break

		case 'the magician':
			answer = false;
		break

		case 'the future':
			answer = false;
		break

		default:
			alert("Please answer one of the options");
			return question3();
		break
	}
	responses.push(answer);
}

question3();

function evaluate( responsesArray ) {
	var corrects = 0;
	var incorrects = 0;

/*
	for (var i = 0; i < responsesArray.length; i++) {
		corrects = responsesArray[i] === true ? corrects++ : corrects;
		incorrects = responsesArray[i] === false ? incorrects++ : incorrects;
	}
*/

	for (var i = 0; i < responsesArray.length; i++) {
		console.log("for loop");
		if (responsesArray[i] === true) {
			corrects += 1;
		} 
		else if (responsesArray[i] === false) {
			incorrects += 1;
		}
	}

	user["corrects"] = corrects;
	user["incorrects"] = incorrects;
}

evaluate(responses);
alert("the correct answers are " + user.corrects);



