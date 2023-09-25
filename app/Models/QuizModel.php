<?php
namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;

class QuizModel extends Model 
{
    protected $table = 'questions';
    protected $primarykey = 'uid';
    protected $allowedfields = ['uid', 'qnum', 'question', 'answera', 'answerb', 'answerc', 'answerd', 'answercorrect', 'category'];
    protected $returnType = 'array';
}