<?php
namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;

class QHighScoreModel extends Model
{
    protected $table = 'qhighscores';
    protected $primarykey = 'id';
    protected $allowedFields = ['id', 'player', 'score', 'category'];
    protected $returnType = 'array';
}

