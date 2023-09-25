<?php

namespace App\Controllers;
use App\Models\QuestModel;
use App\Models\QuestSessionModel;
use App\Models\QHighScoreModel;

class Quest extends BaseController
{
    public function __construct()
    {
        $this->QuestModel = new QuestModel();
        $this->SessionModel = new QuestSessionModel();
	$this->QHighScoreModel = new QHighScoreModel();
    }

    public function shuffle($limit = false)
    {
        $qorder = range(1, $limit-1);
        shuffle($qorder);
        array_push($qorder, $limit);
        return $qorder;
    }
    
    public function index()
    {
        return view ('quest_api');
    }

    public function status()
    {
        $this->startSession();
        return $this->response->setJSON($_SESSION);
    }

    public function startquest($name = false, $category = false)
    {
        if (!$category)
            $category = 'practice_riddles';
        if (!$name)
            return $this->response->setJSON(['status' => 1, 'msg' => 'missing parameter: player name']);
        
        $session = $this->startSession();
        $ses_data = [
            'session' => session_id(),
            'player' => $name, 
            'category' => $category,
            'mode' => 'standard', 
            'qnum' => 0, 
            'qorder' => $this->shuffle(10),
            'score' => 0
        ];
        $session->set($ses_data);
        // $this->questsessiontodb();
        return $this->response->setJSON(['session' => $ses_data['session'], 'player' => $ses_data['player'], 'cateogry' => $ses_data['category'], 'mode' => $ses_data['mode'], 'score' => $ses_data['score']]);
        
    }

    public function getriddle()
    {
        $session = $this->startSession();
        if($session->get('session') == NULL)
        {
            return $this->response->setJSON(['status' => 0, 'msg' => 'No session found. No quest in play']);
        }
        $return = null;
        if (isset($session->get('qorder')[$session->get('qnum')]))
        {
            $return = $this->QuestModel->select('qnum, riddle')->where(['qnum' => $session->get('qorder')[$session->get('qnum')], 'category' => $session->get('category')])->first();
        }
        if(!$return)
        {
            $this->questsessiontodb();
            return $this->response->setJSON(['status' => 0, 'msg' => 'Your have reached the end of the quest, congratulations! ...', 'final score' => $session->get('score')]);
        }
        else
	    {
            return $this->response->setJSON($return);
        }
    }

    public function solveriddle($solution = false)
    {
        if (!$solution)
        return $this->response->setJSON(['status' => 1, 'msg' => 'missing parameter: solution']);
        $session = $this->startSession();
        $riddle = $this->QuestModel->where(['qnum' => $session->get('qorder')[$session->get('qnum')], 'category' => $session->get('category')])->first();
       
        if($riddle['solution'] == $solution) 
        // $pattern = '/'.$solution.'/i';			THIS IS A BAD IDEA SEEK BETTER SOLUTION
        // if (
	//  	(strlen($solution) > strlen($riddle['solution'])*0.67) && 
	//	(preg_match($pattern, $riddle['solution']))
	//)
        {
            $score = $session->get('score') + $riddle['points'];
            $qnum = $session->get('qnum') + 1;
            $session->set('score', $score);
            $session->set('qnum', $qnum);
            // $this->questsessiontodb();
            return $this->response->setJSON(['status' => 0, 'msg' => 'correct', 'score' => $session->get('score')]);
        }
        else
        {
            // $this->questsessiontodb();
            return $this->response->setJSON(['status' => 0, 'msg' => 'incorrect', 'score' => $session->get('score')]);
        } 
    }

    public function submitlocation($lat = false, $lon = false)
    {
        $session = $this->startSession();
        $session->set('lat', $lat);
        $session->set('lon', $lon);
        // $this->questsessiontodb();
        return $this->response->setJSON($_SESSION);
    }

    public function getclue()
    {
        $session = $this->startSession();
        if($session->get('session') == NULL)
        {
            return $this->response->setJSON(['status' => 0, 'msg' => 'No session found. No quest in play']);
        }
        $return = $this->QuestModel->select('hint')->where(['qnum' => $session->get('qorder')[$session->get('qnum')], 'category' => $session->get('category')])->first();
        if(!$return)
        {
            $this->questsessiontodb();
            return $this->response->setJSON(['status' => 0, 'msg' => 'Your have reached the end of the quest, congratulations! ...', 'final score' => $session->get('score')]);
        }
        else
	    {
            $score = $session->get('score') - 5;
            $session->set('score', $score);
            return $this->response->setJSON($return);
        }
    }

    public function endquest()
    {
        $this->questsessiontodb();
        $session = $this->startSession();
        $session->stop();
        $session->destroy();
        // $this->questsessionxdb();
        return $this->response->setJSON(['status' => 0, 'msg' => 'Quest ended']);
    }  

    public function activequests()
    {
        $response = $this->SessionModel->findAll();
        return $this->response->setJSON($response);
    }
	
    public function gethighscores (/*$category = false*/)
    {
        $this->QHighScoreModel->orderby('score', 'DESC');
        $this->QHighScoreModel->limit(10);
       // if(!$category)
            $response = $this->QHighScoreModel->findAll();
       // else
       //     $response = $this->QHighScoreModel->where('category', $category)->findAll();
        return $this->response->setJSON($response);
    }

    public function submithighscore()
    {
        $session = $this->startSession();
        $this->QHighScoreModel->insert(["player" => $session->get('player'), "score" => $session->get('score')]);
        return $this->response->setJSON(['status' => 0, 'msg' => 'Success, High score submitted']);
    }


}
