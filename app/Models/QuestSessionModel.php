<?php
namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;

class QuestSessionModel extends Model 
{
    protected $table = 'questsession';
    protected $primarykey = 'id';
    protected $allowedFields = ['id','session', 'player', 'cateogry', 'mode', 'qnum', 'score'];
    protected $returnType = 'array';
}
