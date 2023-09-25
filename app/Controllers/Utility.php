<?php

namespace App\Controllers;

class Utility extends BaseController
{
    public function hash($input = false)
    {
        if (!$input)
            return $this->response->setJSON(['error' => 'input string missing']);  
        else
            return $this->response->setJSON(['hash' => sha1($input . 'co1111' . md5($input))]);  
    }

   /*  public function sha256hash($input = false)
    {
        if (!$input)
            return $this->response->setJSON(['error' => 'input string missing']);  
        else
            return $this->response->setJSON(['hash' => hash('sha256', $input)]);  
    }

    public function bhash($input = false)
    {
        if (!$input)
            return $this->response->setJSON(['error' => 'input string missing']);  
        else
            return $this->response->setJSON(['hash' => password_hash($input, PASSWORD_DEFAULT)]);  
    } */

    public function dummyusers()
    {
        $users = array(
            array(
                'username' => 'jedwards',
                'password' => '07bccd3231f4dbdc7d259f3c63b09f8177166956'
            ),
            array(
                'username' => 'jallen',
                'password' => '02cfb14519d301c50afbd32f92bc4e81b76eff36'
            ),
            array(
                'username' => 'okerr',
                'password' => '13179c74343dd55aedeb0da294bd68400f3fc5b6'
            )
        );
       
        return $this->response->setJSON(json_encode($users));
    }
}