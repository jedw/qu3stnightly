<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Score panel</title>
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.4/axios.min.js"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
    <h1>Leaderboard score panel</h1>
    <div id="app">
        <table>
	    <tr>
		<th scope="col">Code</th><th scope="col">Teamname</th><th scope="col">Points</th>
	    </tr>
            <tr v-for="team in leaderboard">
                <td>{{team.teamcode}}</td>
                <td>{{team.teamname}}</td>
                <td>{{team.score}}</td>
                <td><button class="btn btn-success" v-on:click="addtoscore(team.teamcode, 1)">+1</button></td>
                <td><button class="btn btn-success" v-on:click="addtoscore(team.teamcode, 2)">+2</button></td>
                <td><button class="btn btn-success" v-on:click="addtoscore(team.teamcode, 3)">+3</button></td>
                <td><button class="btn btn-success" v-on:click="addtoscore(team.teamcode, 5)">+5</button></td>
                <td><button class="btn btn-success" v-on:click="addtoscore(team.teamcode, 10)">+10</button></td>
                <td><button class="btn btn-danger" v-on:click="addtoscore(team.teamcode, -1)">-1</button></td>
            </tr>
        </table>
    </div>
    <script>
        const { createApp } = Vue
        createApp({
            data(){
                return {
                   leaderboard: []
                }
            },
            methods: {
                getscoreboard: function (){
                    axios.get('http://jedw.co.uk/challenge/getleaderboard')
                    .then(res => {
                        this.leaderboard = res.data
                    })
                    .catch(function (error) {
                        console.log(error)
                    })
                },
                addtoscore: function(teamcode, amount){
                    var self = this
                    var data = new URLSearchParams([["teamcode", teamcode], ["pointsawarded", amount]]);
                    axios.post('http://jedw.co.uk/challenge/addtoscore', data)
                    .then (function () {
                        self.getscoreboard()  
                    })
                    .catch(function (error) {
                        console.log(error)
                    })
                }
            },
            mounted () {
                this.getscoreboard()
            }
        }).mount('#app')
    </script>
</body>
</html>
