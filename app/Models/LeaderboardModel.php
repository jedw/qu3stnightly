<?php
namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;

class LeaderboardModel extends Model 
{
    protected $table = 'leaderboard';
    protected $primarykey = 'id';
    protected $allowedFields  = ['id', 'teamcode', 'teamname', 'score'];
    protected $returnType = 'array';
}