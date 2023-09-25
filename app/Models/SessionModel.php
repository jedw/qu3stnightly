<?php
namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;

class SessionModel extends Model 
{
    protected $table = 'quizsession';
    protected $primarykey = 'id';
    protected $allowedFields = ['id', 'session', 'player', 'qnum', 'category', 'score'];
    protected $returnType = 'array';
}