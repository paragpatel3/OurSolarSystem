$(window).bind("load", function () {

    $('#welcomeDiv').slideDown(1100);

});

//qa

var question1 = {
    seen : false,
    q: "What is the distance from the Earth to the Sun in AU (Astronomical Units)?",
    a1: "1.3",
    a2: "100",
    a3: "1",
    a4: "1000",
    ra: 3
};

var question2 = {
    seen: false,
    q: "What is the 2nd closest planet to the Sun called?",
    a1: "Mars",
    a2: "Uranus",
    a3: "Mercury",
    a4: "Venus",
    ra: 4
};

var question3 = {
    seen: false,
    q: "How many natural satellites/moons does Mars have?",
    a1: "8",
    a2: "9",
    a3: "2",
    a4: "3",
    ra: 3
};

var question4 = {
    seen: false,
    q: "How many natural satellites/moons does Jupiter have?",
    a1: "67",
    a2: "23",
    a3: "63",
    a4: "21",
    ra: 1
};

var question5 = {
    seen: false,
    q: "What is the 6th closest planet to the Sun called?",
    a1: "Saturn",
    a2: "Mars",
    a3: "Uranus",
    a4: "Jupiter",
    ra: 1
};

var question6 = {
    seen: false,
    q: "What is the 5th closest planet to the Sun called?",
    a1: "Mars",
    a2: "Jupiter",
    a3: "Mercury",
    a4: "Venus",
    ra: 2
};

var question7 = {
    seen: false,
    q: "What is the distance from Mars to the Sun in AU (Astronomical Units)?",
    a1: "1.3",
    a2: "1.5",
    a3: "2.2",
    a4: "1.4",
    ra: 2
};

var question8 = {
    seen: false,
    q: "How many planets are there in the solar system (note; Pluto is no longer classed as a planet!)",
    a1: "7",
    a2: "8",
    a3: "9",
    a4: "10",
    ra: 2
};

var question9 = {
    seen: false,
    q: "How many natural satellites/moons does Uranus have?",
    a1: "15",
    a2: "32",
    a3: "27",
    a4: "62",
    ra: 3
};

var question10 = {
    seen: false,
    q: "What is the planet furthest from the Sun called?",
    a1: "Venus",
    a2: "Uranus",
    a3: "Neptune",
    a4: "Mercury",
    ra: 3
};

var question11 = {
    seen: false,
    q: "Which planet has the most natural satellites/moons in our system?",
    a1: "Saturn",
    a2: "Jupiter",
    a3: "Uranus",
    a4: "Venus",
    ra: 2
};

var question12 = {
    seen: false,
    q: "Planet Earth has a mass 10 times that of which planet?",
    a1: "Mercury",
    a2: "Mars",
    a3: "Neptune",
    a4: "Saturn",
    ra: 2
};

var question13 = {
    "seen": false,
    "q": "In terms of volume, how many Earths would it take to fill the Sun?",
    "a1": "800,000",
    "a2": "500,000",
    "a3": "1,300,000",
    "a4": "2,000,000",
    "ra": 3
};

var questions = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13];


document.getElementById("startQuiz").addEventListener('click', startQuizClicked, 'false');
document.getElementById("li1").addEventListener('click', function () { $('#confirmBtn').attr("style", "display: block;"); }, 'false');
document.getElementById("li2").addEventListener('click', function () { $('#confirmBtn').attr("style", "display: block;"); }, 'false');
document.getElementById("li3").addEventListener('click', function () { $('#confirmBtn').attr("style", "display: block;"); }, 'false');
document.getElementById("li4").addEventListener('click', function () { $('#confirmBtn').attr("style", "display: block;"); }, 'false');
document.getElementById("li1").addEventListener('click', answerSelected, 'false');
document.getElementById("li2").addEventListener('click', answerSelected, 'false');
document.getElementById("li3").addEventListener('click', answerSelected, 'false');
document.getElementById("li4").addEventListener('click', answerSelected, 'false');


var userScore;
var userAnswer;
var questionSelect;
var questionNumber;
var answered = false;

function divLearnClicked() {
    $('#solarSystem').attr("style", "display: block;");
    $('#welcomeDiv').hide(800);
    $('#learnDiv').slideDown(1100);
}

function goBackClicked() {
    $('#learnDiv').hide();
    $('#quizDiv').hide();
    $('#welcomeDiv').slideDown(1100);
}

function answerSelected() {
    answered = true;
}

function startQuizClicked() {
    $('#welcomeDiv').hide();
    $('#quizDiv').show();
    $('#quizAnswers').attr("style", "display: block;");
    $('#quizQuestion').attr("style", "display: block;");
    $('#quizDiv').attr("style", "display: block;");
    $('#confirmBtn').attr("style", "display: block;");
    $('#questionNumber').attr("style", "display: block;");
   
    quizStarted();
}

function confirmBtnClicked() {

    if ((answered) && (questionNumber <= 10)) {
        $('#quizDiv').hide();
        $('#quizDiv').delay(100).show(700);
        score(); // scoring code
        newQuestion();
    }

    else {
        alert("Please select an answer first.");
    }

}

function quizStarted() {
    userScore = 0; //reset score
    $('#scoreLabel').innerHTML = userScore;
    questionNumber = 0;

    for (i = 0; i < questions.length; i++) {
        questions[i].seen = false;
    }

    newQuestion();
}

function newQuestion() {
    answered = false;
    $(':radio').prop('checked', false);
    questionNumber++;

    if (questionNumber <= 10) {
        loadQuestion();
        $('#confirmBtn').attr("style", "display: block;");
    }
    else quizEnd();

}

function score() {

    userAnswer = $("input:checked").val();
    console.log(userAnswer);
    console.log(questions[questionSelect].ra);

    if (userAnswer == questions[questionSelect].ra) {
        userScore++;
        console.log(userScore);
    }
  
}

function quizEnd() {
    
    if ((userScore >= 0) && (userScore < 5)) {
        alert("You scored: " + (userScore*10) + "%" + "\nBetter luck next time?..");
    }
    else if ((userScore > 5) && (userScore < 9)) {
        alert("You scored: " + (userScore * 10) + "%" + "\nWell Done!");
    }
    else if ((userScore == 9) || (userScore == 10)) {
        alert("You scored: " + (userScore * 10) + "%" + "\nAmazing!");
    }
    
    $('#quizAnswers').attr("style", "display: none;");
    $('#quizQuestion').attr("style", "display: none;");
    $('#questionNumber').attr("style", "display: none;");
    $('#welcomeDiv').show();
    $('#quizDiv').attr("style", "display: none;");
    $('#confirmBtn').attr("style", "display: none;");

}

function newNumber() {
    questionSelect = Math.floor(Math.random() * 13);
}

function loadQuestion() {
    // get a random number and set that as the questionnumber using return Math.floor(Math.random() * (max - min + 1)) + min;
    document.getElementById("questionNumber").textContent = questionNumber;
    
    newNumber();
    
    if (questions[questionSelect].seen == false) {
        //sets a random question object data into the radio list and question label
        document.getElementById("quizQuestion").innerHTML = questions[questionSelect].q;
        document.getElementById("li1").textContent = questions[questionSelect].a1;
        document.getElementById("li2").innerHTML = questions[questionSelect].a2;
        document.getElementById("li3").innerHTML = questions[questionSelect].a3;
        document.getElementById("li4").innerHTML = questions[questionSelect].a4;
        questions[questionSelect].seen = true;
    }
    else if ((questions[questionSelect].seen == true) && (questionNumber <= 10))  {
        loadQuestion();
    }
}
