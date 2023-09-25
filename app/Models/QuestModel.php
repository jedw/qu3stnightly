<?php
namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;

class QuestModel extends Model 
{
    protected $table = 'quest';
    protected $primarykey = 'uid';
    protected $allowedfields = ['uid', 'qnum', 'category', 'mode', 'riddle', 'solution', 'points'];
    protected $returnType = 'array';
}
