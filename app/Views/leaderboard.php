<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leaderboard</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
    <h1>CO1111 The Computing Challenge 2023 </h1>
    <h2>Leaderboard</h2>
    <div class="container">
    <div id="app">
        <table class="table">
	    <thead class="thead-dark">
            <tr>
                 <th scope="col">Code</th><th scope="col">Teamname</th><th scope="col">Points</th><th scope="col">League</th>
            </tr>
        </thead>
        <tbody>
            <?php
                foreach($leaderboard as $team){
            ?>
            <tr>
                <td><?php echo $team['teamcode'] ?></td>
                <td><?php echo $team['teamname'] ?></td>
                <td><?php echo $team['score'] ?></td> 
                <td><?php echo $team['league'].' League' ?></td>
		</tr>
            <?php
            }
            ?>
        </tbody>
        </table>
    </div>
   
    </div>
</body>
</html>
