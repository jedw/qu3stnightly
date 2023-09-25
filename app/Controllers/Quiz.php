<?php

namespace App\Controllers;
use App\Models\QuizModel;
use App\Models\HighScoreModel;
use App\Models\SessionModel;


class Quiz extends BaseController
{
    public function __construct()
    {
        $this->QuizModel = new QuizModel();
        $this->HighScoreModel = new HighScoreModel();
        $this->SessionModel = new SessionModel();
    }
    
    public function index()
    {
        return view('quest_api');
    }

    public function status()
    {
        $this->startSession();
        return $this->response->setJSON($_SESSION);
    }

    public function getcategories()
    {
        $this->QuizModel->distinct();
        $this->QuizModel->select('category');
        $categories = $this->QuizModel->findAll();
        $response = [];
        foreach($categories as $cat)
        {
            array_push($response, $cat['category']);
        }
        return $this->response->setJSON($response);
    }

    public function startquiz($name = false, $category = false)
    {
        if (!$name)
            return $this->response->setJSON(['status' => 1, 'msg' => 'missing parameter: username']);
        else if (!$category)
        {
            $session = $this->startSession();
            $ses_data = [
                'session' => session_id(),
                'player' => $name, 
                'category' => 'general', 
                'qnum' => 1, 
                'score' => 0
            ];
            $session->set($ses_data);
            $this->sessiontodb();
            return $this->response->setJSON($ses_data);
        }
        else
        {
            $session = $this->startSession();
            $ses_data = [
                'session' => session_id(),
                'player' => $name, 
                'category' => $category, 
                'qnum' => 1, 
                'score' => 0
            ];
            $session->set($ses_data);
            $this->sessiontodb();
            return $this->response->setJSON($ses_data);
        }  
    }

    public function getquestion()
    {
        $session = $this->startSession();
        $return = $this->QuizModel->where(['qnum' => $session->get('qnum'), 'category' => $session->get('category')])->first();
        if(!$return)
	{
            $this->sessionxdb();
	    return $this->response->setJSON(['status' => 0, 'msg' => 'end', 'final score' => $session->get('score')]);
	}
        else
	{
            return $this->response->setJSON($return);
        }
    }

    public function answerquestion($answer = false)
    {
        if (!$answer)
        return $this->response->setJSON(['status' => 1, 'msg' => 'missing parameter: answer']);
        $session = $this->startSession();
        $question = $this->QuizModel->where(['qnum' => $session->get('qnum'), 'category' => $session->get('category')])->first();
       
         if($question['answercorrect'] == $answer)
        {
            $score = $session->get('score') + 1;
            $qnum = $session->get('qnum') + 1;
            $session->set('score', $score);
            $session->set('qnum', $qnum);
            $this->sessiontodb();
            return $this->response->setJSON(['status' => 0, 'msg' => 'correct', 'score' => $session->get('score')]);
        }
        else
        {
            $qnum = $session->get('qnum') + 1;
            $session->set('qnum', $qnum);
            $this->sessiontodb();
            return $this->response->setJSON(['status' => 0, 'msg' => 'incorrect', 'score' => $session->get('score')]);
        } 
    }
    public function gethighscores ($category = false)
    {
        $this->HighScoreModel->orderby('score', 'DESC');
        $this->HighScoreModel->limit(10);
        if(!$category)
            $response = $this->HighScoreModel->findAll();
        else
            $response = $this->HighScoreModel->where('category', $category)->findAll();
        return $this->response->setJSON($response);
    }

    public function submithighscore()
    {   
        $session = $this->startSession();
        $this->HighScoreModel->insert(["player" => $session->get('player'), "category" => $session->get('category'), "score" => $session->get('score')]);
        return $this->response->setJSON(['status' => 0, 'msg' => 'Success, High score submitted']);
    }

    public function endgame()
    {
        $session = $this->startSession();
        $session->stop();
        $session->destroy();
        $this->sessionxdb();
        return $this->response->setJSON(['status' => 0, 'msg' => 'Game ended, session destroyed']);
    }
    public function activegames()
    {
        $response = $this->SessionModel->findAll();
        return $this->response->setJSON($response);
    }

}
