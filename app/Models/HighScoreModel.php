<?php
namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;

class HighScoreModel extends Model 
{
    protected $table = 'highscores';
    protected $primarykey = 'id';
    protected $allowedFields = ['id', 'player', 'category', 'score'];
    protected $returnType = 'array';
}