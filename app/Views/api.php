<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Challenge server API</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        .blue{
            color:#5588ff;
        }
        .green{
            color:#27ae60 ;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/default.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js"></script>
    <script>hljs.highlightAll();</script>
</head>
<body>
    <h1>Quiz API</h1>

    <p>Welcome to the challenge server. This document describes how to interact with the multi-choice quiz API</p>
<div class="container">
    <h2>Endpoint URIs (uniform resource indicators)</h2>

    <sub>*a.k.a. web addresses</sub>
    <hr>

    <h3>www.jedw.co.uk/challenge/quiz/quiz</h3>

        <p>This page</p>
        <p>returns HTML. NO JSON. Serves no other function than as as a welcome message and documentation</p>

    <h3>www.jedw.co.uk/challenge/getcategories</h3>
    <p>Returns the available question categories - needed if you wish to choose a category rather than start a general knowledge quiz</p>
    
    <p><strong>Sample output:</strong></p>
    <pre><code class="language-json">[
    "general",
    "math",
    "cars"
]</code></pre>
    
    <h3>www.jedw.co.uk/challenge/startquiz</h3>

    <p><strong>URI Format: </strong>http://www.jedw.co.uk/challenge/startquiz/<span class="green">{username}</span>/<span class="blue">{category}</span></p>
    <ul>
        <li>e.g. http://www.jedw.co.uk/challenge/startquiz/<span class="green">jonathan</span>/<span class="blue">math</span></li>
    </ul>

        <p>Requires at least one option as a URI segment<p>
            <p><strong>Required options:</strong></p>
            <ul>
                <li>username</li>
            </ul>
            <p>The players name - a text string of alpha-numeric characters.</p>
            <p>e.g. www.jedw.co.uk/challenge/startquiz/jonathan</p>
            <p><strong>Optional options:</strong></p>
            <ul>
                <li>category</li>
            </ul>
            <p>The question category - a text string of alpha-numeric characters. Must match one of the available categories available at www.jedw.co.uk/challenge/getcategories</p>
            <p>Omitting this option will start a new quiz selecting the category 'general knowledge' as default</p>
            <p>e.g. www.jedw.co.uk/challenge/startquiz/jonathan/math</p>

                
    <p><strong>Sample output:</strong></p>
    <pre><code class="language-json">{
    "session": "363c29b1c747af7951cb3cd83237bcadf496bbc7",
    "player": "jonathan",
    "category": "general",
    "qnum": 1,
    "score": 0
}</code></pre>

    <h3>www.jedw.co.uk/challenge/getquestion</h3>

    <p>Returns the current question (that has not been answered yet)</p>
    <strong>Important:</strong><p>For use with a client that doesn't support session cookies, the sesion ID is required to be passed back through the URL in the following format:</p>
    <ul>
        <li>e.g. http://www.jedw.co.uk/challenge/getquestion<span class="blue">?PHPSESSID={session id goes here}</span></li>
    </ul>
    <p>If the end of the quiz has been reached then the response will inform of this and give the final score</p>

        
    <p><strong>Sample output:</strong></p>
    <pre><code class="language-json">{
    "uid": "6",
    "qnum": "1",
    "question": "What is the value of x in the equation 3x + 7 = 16?",
    "answera": "x = 3",
    "answerb": "x = 3.3",
    "answerc": "x = 3.5",
    "answerd": "x = 3.6",
    "answercorrect": "3",
    "category": "math"
}</code></pre>

    <h3>www.jedw.co.uk/challenge/answerquestion</h3>

  

    <p><strong>URI Format: </strong>http://www.jedw.co.uk/challenge/answerquestion/<span class="green">{answer}</span></p>
    <ul>
        <li>e.g. http://www.jedw.co.uk/challenge/answerquestion/<span class="green">london</span></li>
    </ul>
    <strong>Important:</strong><p>For use with a client that doesn't support session cookies, the sesion ID is required to be passed back through the URL in the following format:</p>
    <ul>
        <li>e.g. http://www.jedw.co.uk/challenge/answerquestion/<span class="green">london</span><span class="blue">?PHPSESSID={session id goes here}</span></li>
    </ul>

    <p>Requires one option as a URI segment - the answer to the current question<p>
        <p><strong>Required options:</strong></p>
        <ul>
            <li>answer</li>
        </ul>

        <p>The players answer - a text string of alpha-numeric characters.</p>
        <p>e.g. www.jedw.co.uk/challenge/answerquestion/london</p>

            
    <p><strong>Sample output:</strong></p>
    <pre><code class="language-json">{
    "status": 0,
    "msg": "correct",
    "score": 1
}</code></pre>

    <h3>www.jedw.co.uk/challenge/status</h3>

    <strong>Important:</strong><p>For use with a client that doesn't support session cookies, the sesion ID is required to be passed back through the URL in the following format:</p>
    <ul>
        <li>e.g. http://www.jedw.co.uk/challenge/status<span class="blue">?PHPSESSID={session id goes here}</span></li>
    </ul>

        
    <p><strong>Sample output:</strong></p>
    <pre><code class="language-json">{
    "__ci_last_regenerate": 1679908581,
    "session": "363c29b1c747af7951cb3cd83237bcadf496bbc7",
    "player": "jonathan",
    "category": "general",
    "qnum": 1,
    "score": 0
}</code></pre>

    <h3>www.jedw.co.uk/challenge/getleaderboard</h3>

        
    <p><strong>Sample output:</strong></p>
    <pre><code class="language-json">[
    {
        "id": "1",
        "teamcode": "A1",
        "teamname": "Team Awesome",
        "score": "100"
    },
    {
        "id": "2",
        "teamcode": "B1",
        "teamname": "Losers",
        "score": "10"
    },
    {
        "id": "3",
        "teamcode": "C1",
        "teamname": "Idiots",
        "score": "20"
    },
    {
        "id": "4",
        "teamcode": "D1",
        "teamname": "Morons",
        "score": "15"
    },
    {
        "id": "5",
        "teamcode": "X1",
        "teamname": "App Monsters",
        "score": "0"
    },
    {
        "id": "6",
        "teamcode": "X2",
        "teamname": "X Pheonix",
        "score": "0"
    },
    {
        "id": "7",
        "teamcode": "X3",
        "teamname": "Code-X",
        "score": "0"
    },
    {
        "id": "8",
        "teamcode": "X4",
        "teamname": "Fantastic Four",
        "score": "4"
    }
]</code></pre>

<h3>www.jedw.co.uk/challenge/gethighscores</h3>

<p>Return top 10 high scores either by cany ategory or for a supplied catagory

<p><strong>URI Format: </strong>http://www.jedw.co.uk/challenge/gethighscores/<span class="green">{category}</span></p>
<ul>
<li>e.g. http://www.jedw.co.uk/challenge/answerquestion</li>
        <li>e.g. http://www.jedw.co.uk/challenge/answerquestion/<span class="green">math</span></li>
    </ul>
    <p><strong>Required options:</strong></p>
    <ul>
        <li>none</li>
    </ul>
    <p><strong>Optional options:</strong></p>
    <ul>
        <li>category</li>
    </ul>

    <p><strong>Sample output: </strong></p>

    <pre><code class="language-json">[
    {
        "id": "1",
        "player": "jonathan",
        "category": "general",
        "score": "5"
    },
    {
        "id": "4",
        "player": "ollie",
        "category": "general",
        "score": "4"
    },
    {
        "id": "5",
        "player": "ollie",
        "category": "math",
        "score": "4"
    },
    {
        "id": "7",
        "player": "Matt",
        "category": "cars",
        "score": "4"
    },
    {
        "id": "6",
        "player": "Lesley",
        "category": "general",
        "score": "3"
    },
    {
        "id": "2",
        "player": "jooolie",
        "category": "general",
        "score": "1"
    },
    {
        "id": "3",
        "player": "nick",
        "category": "music",
        "score": "1"
    }
]</code></pre>

<h3>www.jedw.co.uk/challenge/submithighscore</h3>

<p>submit new highscore for the current game is session</p>

<p><strong>URI Format: </strong>http://www.jedw.co.uk/challenge/submighighscore</p>
<ul>
<li>e.g. http://www.jedw.co.uk/challenge/submighighscore</li>
    </ul>
    <p><strong>Required options:</strong></p>
    <ul>
        <li>none</li>
    </ul>
    <p><strong>Optional options:</strong></p>
    <ul>
        <li>none</li>
    </ul>
   
   <p><strong>Sample output:</strong></p>

   <pre><code class="language-json">{
    "status": 0,
    "msg": "Success, High score submitted"
}</code></pre>
</div>
<hr>
<p>Jonathan Edwards | 2023</p>
</body>
</html>
