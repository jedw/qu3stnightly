<?php

namespace App\Controllers;
use App\Models\LeaderboardModel;

class Leaderboard extends BaseController
{
    public function getleaderboard()
    {
        $LeaderboardModel = new LeaderboardModel();
        $response = $LeaderboardModel->findAll();
        return $this->response->setJSON($response);
    }

    /* public function getsorted()
    {
        $LeaderboardModel = new LeaderboardModel();
        $response = $LeaderboardModel->orderBy("score","DESC")->findAll();
        return $this->response->setJSON($response);
    }*/

    public function leaderboard()
    {
        $LeaderboardModel = new LeaderboardModel();
        $response["leaderboard"] = $LeaderboardModel->orderBy("score","DESC")->findAll();
        return view('leaderboard', $response);
    }

    public function scorepanel($password = false)
    {
        if ((!$password) or ($password != "opensesame"))
            throw \CodeIgniter\Exceptions\PageNotFoundException::forPageNotFound();
        return view('scorepanel');
    }
    
    public function addtoscore()
    {
        $LeaderboardModel = new LeaderboardModel();
        $teamcode = $this->request->getPost('teamcode');
        $pointsawarded = $this->request->getPost('pointsawarded');
       
        $LeaderboardModel->set('score', 'score + ' . $LeaderboardModel->escape($pointsawarded), FALSE)
            ->where('teamcode', $teamcode)
            ->update(); 
    }
}