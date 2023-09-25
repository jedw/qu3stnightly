<?php

namespace App\Controllers;
use App\Models\QuestModel;
use App\Models\QuestSessionModel;

class Quest extends BaseController
{
    public function __construct()
    {
        $this->QuestModel = new QuestModel();
        $this->SessionModel = new QuestSessionModel();
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
            $category = 'quest';
        if (!$name)
            return $this->response->setJSON(['status' => 1, 'msg' => 'missing parameter: player name']);
        
        $session = $this->startSession();
        $ses_data = [
            'session' => session_id(),
            'player' => $name, 
            'category' => $category,
            'mode' => 'standard', 
            'qnum' => 1, 
            'score' => 0
        ];
        $session->set($ses_data);
        $this->questsessiontodb();
        return $this->response->setJSON($ses_data);
        
    }

    public function getriddle()
    {
        $session = $this->startSession();
        $return = $this->QuestModel->select('qnum, riddle')->where(['qnum' => $session->get('qnum'), 'category' => $session->get('category')])->first();
        if(!$return)
        {
            $this->questsessionxdb();
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
        $riddle = $this->QuestModel->where(['qnum' => $session->get('qnum'), 'category' => $session->get('category')])->first();
       
        if($riddle['solution'] == $solution)
        {
            $score = $session->get('score') + $riddle['points'];
            $qnum = $session->get('qnum') + 1;
            $session->set('score', $score);
            $session->set('qnum', $qnum);
            $this->questsessiontodb();
            return $this->response->setJSON(['status' => 0, 'msg' => 'correct! you may now continue your quest ...', 'score' => $session->get('score')]);
        }
        else
        {
            $this->questsessiontodb();
            return $this->response->setJSON(['status' => 0, 'msg' => 'sorry that\'\s incorrect, please try again ...', 'score' => $session->get('score')]);
        } 
    }

    public function submitlocation($lat = false, $lon = false)
    {
        $session = $this->startSession();
        $session->set('lat', $lat);
        $session->set('lon', $lon);
        $this->questsessiontodb();
        return $this->response->setJSON($_SESSION);
    }

    public function getclue()
    {
        $session = $this->startSession();
        $return = $this->QuestModel->select('hint')->where(['qnum' => $session->get('qnum'), 'category' => $session->get('category')])->first();
        if(!$return)
        {
            $this->questsessionxdb();
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
        $session = $this->startSession();
        $session->stop();
        $session->destroy();
        $this->questsessionxdb();
        return $this->response->setJSON(['status' => 0, 'msg' => 'Quest ended, session destroyed']);
    }  

    public function activequests()
    {
        $response = $this->SessionModel->findAll();
        return $this->response->setJSON($response);
    }
}