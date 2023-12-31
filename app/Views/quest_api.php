<!-- DEBUG-VIEW START 1 APPPATH/Views/api.php -->
<!DOCTYPE html>
<html lang="en">

<head>
	</style>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Challenge server API</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<style>
		.blue {
			color: #5588ff;
		}

		.green {
			color: #27ae60;
		}
	</style>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/default.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js"></script>
	<script>hljs.highlightAll();</script>
</head>

<body>
	<h1>The Computing Challenge 2023: Server API</h1>

	<p>Welcome to the challenge server. This document describes how to interact with the API</p>
	<hr>
	<div class="container">
		<h2>Endpoint URIs (uniform resource indicators)</h2>

		<sub>*a.k.a. web addresses</sub>
		<hr>

		<h3>Leaderboard</h3>
		<h4>www.jedw.co.uk/challenge/getleaderboard</h4>
		<p>Returns the current leaderboard. Teams are in order that they appear in the database i.e., in order of the
			team code from A -Z and are not sorted by score. Please note that ‘id’ is merely a row count and otherwise insignificant. There are no options, and no inputs.</p>
		<h5>Sample output:</h5>

		<pre><code class="language-json">[
	{
		"id": "1",
		"teamcode": "A1",
		"teamname": "Team Awesome",
		"score": "100",
		"league": "Livesey"
	},
	{
		"id": "2",
		"teamcode": "A2",
		"teamname": "Winners",
		"score": "10",
		"league": "Harris"
	},
	{
		"id": "3"
		"teamcode": "A3",
		"teamname": "Champions",
		"score": "20",
		"league": "Victoria"
	},
	{
		"id": "4",
		"teamcode": "A4",
		"teamname": "Mega",
		"score": "15",
		"league": "Darwin"
	},
	{
		"id": "5",
		"teamcode": "B1",
		"teamname": "App Monsters",
		"score": "0",
		"league": "Livesey"
	},
]</code></pre>
		<p>Note: actual output will be significantly longer.</p>

		<hr>
		<h3>Quest</h3>

		<h4>www.jedw.co.uk/challenge/quest/startquest</h4>

		<p>Begins the quest. Requires the players name as input. Once the quest has been started returns the newly
			created user session.</p>
		<h5>URI Format: </h5>

		<p>http://www.jedw.co.uk/challenge/quest/startquest/<span class="green">{playername}</span>/<span
				class="blue">{category}</span></p>

		<ul>
			<li>e.g. http://www.jedw.co.uk/challenge/quest/startquest/<span class="green">jonathan</span>/<span
					class="blue">quest</span></li>
		</ul>

		<p>Omitting the player's name will result in an error message being sent.</p>

		<h5>Options:</h5>

		<ul>
			<li>category</li>
		</ul>

		<p>e.g. www.jedw.co.uk/challenge/quest/startquest/<span class="green">jonathan</span>/<span
				class="blue">something_else</span></p>

		<p>Quest category - a text string of alpha-numeric characters. Must match one of the available categories
			available. <strong>The default is to omit this parameter</strong></p>
		<p>Omitting this option will start the quest in the default mode which is practice riddles.</p>

		<h5>Sample error: </h5>

		<pre><code class="language-json">{
    "status": 1,
    "msg": "missing player name"
}</code></pre>

		<h5>Sample standard output:</h5>

		<pre><code class="language-json">{
    "session": "bc2b0abd2a7649a27fc4bb8ee63b43b3defad1c6",
    "player": "jonathan",
    "category": "quest",
    "qnum": 1,
    "score": 0
}</code></pre>

		<h4>www.jedw.co.uk/challenge/quest/getriddle</h4>

		<p>Returns the next riddle in the quest (that has not been answered yet). There are no options or inputs. </p>
		<h5>Important note:</h5>

		<p>For use with a client that doesn't support session cookies i.e. Thunkable app, the session ID is required to
			be passed back through the URL in the following format:</p>

		<ul>
			<li>e.g. http://www.jedw.co.uk/challenge/quest/getriddle<span class="green">?PHPSESSID={session id goes
					here}</span></li>
		</ul>

		<p>This is not required when testing the API in a browser due to cookies.</p>

		<p>If the end of the quiz has been reached, then the response will inform of this and give the final score</p>

		<h5>Sample output:</h5>

		<pre><code class="language-json">{
    "qnum": "1",
    "riddle": "the answer to this riddle is julie"
}</code></pre>

		<h5>Or if end is reached:</h5>

		<pre><code class="language-json">{
    "status": 0,
    "msg": "Your have reached the end of the quest, congratulations! ...",
    "final score": 100
}</code></pre>

		<p>NOTE: As you can see the solution is not returned as part of the JSON response - this is to prevent teams
			from simply developing apps which display the answer onscreen </p>

		<h4>www.jedw.co.uk/challenge/quest/solveriddle</h4>

		<p>Used to submit players solution to the current riddle</p>

		<h5>URI Format: </h5>

		<p>http://www.jedw.co.uk/challenge/quest/solveriddle/<span class="green">{answer}</span></p>

		<ul>
			<li>e.g. http://www.jedw.co.uk/challenge/quest/solveriddle/<span class="green">julie</span></li>
		</ul>

		<h5>Important:</h5>

		<p>For use with a client that doesn't support session cookies, the session ID is required to be passed back
			through the URL in the following format:</p>

		<ul>
			<li>e.g. http://www.jedw.co.uk/challenge/quest/solveriddle/julie<span class="green">?PHPSESSID={session id
					goes here}</span></li>
		</ul>

		<p>This is not required when testing the API in a browser due to cookies.</p>

		<p>Requires one option as a URI segment - the solution to the current riddle</p>

		<h5>Required options:</h5>

		<ul>
			<li>answer</li>
		</ul>

		<p>The players answer - a text string of alpha-numeric characters.</p>

		<ul>
			<li>e.g. www.jedw.co.uk/challenge/quest/solveriddle/<span class="green">julie</span></li>
		</ul>

		<p>Omitting the player's answer will result in an error message being sent.</p>

		<h5>Sample output:</h5>

		<pre><code class="language-json">{
    "status": 0,
    "msg": "correct",
    "score": 1
}</code></pre>

		<h5>Sample standard output:</h5>

		<pre><code class="language-json">{
    "status": 1,
    "msg": "missing solution"
}</code></pre>

		<h4>www.jedw.co.uk/challenge/quest/getclue</h4>

		<p>Returns a clue to the current riddle for use if the player is struggling to solve the riddle, however using
			this option deducts points so tactically it is better to play the quest without using clues. No options or
			inputs.
		</p>

		<h5>Important:</h5>

		<p>For use with a client that doesn't support session cookies i.e. Thunkable app, the session ID is required to
			be passed back through the URL in the following format:
		</p>

		<ul>
			<li>e.g. http://www.jedw.co.uk/challenge/quest/getclue<span class="green">?PHPSESSID={session id goes
					here}</span>
			</li>
		</ul>

		<p>This is not required when testing the API in a browser due to cookies.</p>
		<h5>Sample output:</h5>

		<pre><code class="language-json">{
    "hint": "this is a clue..."
}</code></pre>

		<h4>www.jedw.co.uk/challenge/quest/submitlocation</h4>

		<p>Used to submit the players current location by way of latitude and longitude coordinates. This is not required for the core quest app but is an additional addon feature</p>

		<h5>URI Format: </h5>

		<p>http://www.jedw.co.uk/challenge/quest/submitlocation/<span class="green">{latitude}</span>/<span class="blue">{longitude}</span></p>

		<h5>Important:</h5>

		<p>For use with a client that doesn't support session cookies i.e. Thunkable app, the session ID is required to
			be passed back through the URL in the following format:
		</p>

		<ul>
			<li>e.g. http://www.jedw.co.uk/challenge/quest/submitlocation<span class="green">?PHPSESSID={session id goes
					here}</span>
			</li>
		</ul>
		<p>This is not required when testing the API in a browser due to cookies.</p>
		<h5>Required options:</h5>

		<ul>
			<li>latitude</li>
			<li>longitude</li>
		</ul>
		<h5>Sample output:</h5>
		<p>Note: this is basically the same as the output from /status however from now on the position data should be included</p>
		<pre><code class="language-json">{
    "session": "eef46091a399a6d1819ac46acb37d2f4081bd24d",
    "player": "jonathan",
    "category": "practice_riddles",
    "qnum": 1,
    "score": 10,
    "latitude": "53.7633452",
    "longitude": "-2.70917",
}</code></pre>

		<p>Latitude - the current latitude coordinate e.g. 53.7633452</p>
		<p>Longitude - the current longitude coordinate e.g. -2.70917</p>

		<h4>www.jedw.co.uk/challenge/quest/status</h4>

		<p>Used to get the status of the current quest in play. No options or inputs. </p>
		<h5>Important:</h5>

		<p>For use with a client that doesn't support session cookies, the session ID is required to be passed back
			through the URL in the following format:
		</p>

		<ul>
			<li>e.g. http://www.jedw.co.uk/challenge/quest/status<span class="green">?PHPSESSID={session id goes
					here}</span></li>
		</ul>
		<p>This is not required when testing the API in a browser due to cookies.</p>
		<h5>Sample output:</h5>

		<pre><code class="language-json">{
    "session": "eef46091a399a6d1819ac46acb37d2f4081bd24d",
    "player": "jonathan",
    "category": "practice_riddles",
    "qnum": 1,
    "score": 10
}</code></pre>

<h4>www.jedw.co.uk/challenge/quest/endquest</h4>

<p>Used to end the current quest in play and destroy the session<p>

<h5>Important:</h5>

		<p>For use with a client that doesn't support session cookies, the session ID is required to be passed back
			through the URL in the following format:
		</p>

		<ul>
			<li>e.g. http://www.jedw.co.uk/challenge/quest/endquest<span class="green">?PHPSESSID={session id goes
					here}</span></li>
		</ul>
		<p>This is not required when testing the API in a browser due to cookies. No options or inputs.</p>
		<h5>Sample output:</h5>

		<pre><code class="language-json">{
    "status": 0,
    "msg": "Quest ended, session destroyed"
}</code></code></pre>

<h4>www.jedw.co.uk/challenge/quest/gethighscores</h4>

<p>Return top 10 high scores on the quest</p>

<p><strong>URI Format: </strong>http://www.jedw.co.uk/challenge/gethighscores</p>
<ul>
<li>e.g. http://www.jedw.co.uk/challenge/quest/gethighscores</li>
    </ul>
    <p><strong>Required options:</strong></p>
    <ul>
        <li>none</li>
    </ul>
    <p><strong>Optional options:</strong></p>
    <ul>
        <li>category <span style="font-style: italic;">(Ignore, does nothing, this is for future development only)</span></li>
    </ul>

    <p><strong>Sample output: </strong></p>

    <pre><code class="language-json">[
    {
        "id": "1",
        "player": "jonathan",
        "category": "practice_riddles",
        "score": "5"
    },
    {
        "id": "4",
        "player": "julie",
        "category": "practice_riddles",
        "score": "4"
    },
    {
        "id": "5",
        "player": "ollie",
        "category": "practice_riddles",
        "score": "4"
    },
    {
        "id": "7",
        "player": "matt",
        "category": "practice_riddles",
        "score": "4"
    }
]</code></pre>

<h4>www.jedw.co.uk/challenge/quest/submithighscore</h4>

<p>Submit new highscore for the current quest in session</p>

<p><strong>URI Format: </strong>http://www.jedw.co.uk/challenge/quest/submithighscore</p>
<ul>
<li>e.g. http://www.jedw.co.uk/challenge/quest/submithighscore</li>
    </ul>
    <p><strong>Required options:</strong></p>
    <ul>
        <li>none</li>
    </ul>
    <p><strong>Optional options:</strong></p>
    <ul>
        <li>none</li>
    </ul>
   
		<h5>Important:</h5>

		<p>For use with a client that doesn't support session cookies, the session ID is required to be passed back
			through the URL in the following format:
		</p>

		<ul>
			<li>e.g. http://www.jedw.co.uk/challenge/quest/submithighscores<span class="green">?PHPSESSID={session id goes
					here}</span></li>
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
