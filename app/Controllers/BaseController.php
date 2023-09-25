<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\CLIRequest;
use CodeIgniter\HTTP\IncomingRequest;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;
use App\Models\SessionModel;
use App\Models\QuestSessionModel;

/**
 * Class BaseController
 *
 * BaseController provides a convenient place for loading components
 * and performing functions that are needed by all your controllers.
 * Extend this class in any new controllers:
 *     class Home extends BaseController
 *
 * For security be sure to declare any new methods as protected or private.
 */
abstract class BaseController extends Controller
{
    /**
     * Instance of the main Request object.
     *
     * @var CLIRequest|IncomingRequest
     */
    protected $request;

    /**
     * An array of helpers to be loaded automatically upon
     * class instantiation. These helpers will be available
     * to all other controllers that extend BaseController.
     *
     * @var array
     */
    protected $helpers = [];

    /**
     * Constructor.
     */
    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);

        // Preload any models, libraries, etc, here.

        // E.g.: $this->session = \Config\Services::session();
    }

    public function sessiontodb()
    {
        $session = \Config\Services::Session();
        $sessionmodel = new SessionModel();
        $data = [
            'session' => $session->get('session'),
            'player' => $session->get('player'),
            'category' => $session->get('category'),
            'qnum' => $session->get('qnum'),
            'score' => $session->get('score')
        ];
        $sessionmodel->replace($data);
    }

    public function sessionxdb()
    {
        $session = \Config\Services::Session();
        $sessionmodel = new SessionModel();
        $sessionmodel->where('session', $session->get('session'))->delete();
    }

    public function questsessiontodb()
    {
        $session = \Config\Services::Session();
        $sessionmodel = new QuestSessionModel();

        $lat = "";
        $lon = "";
        
        if($session->get('lat'))
            $lat = $session->get('lat');
        if($session->get('lon'))
            $lon = $session->get('lon');

        $data = [
            'session' => $session->get('session'),
            'player' => $session->get('player'),
            'category' => $session->get('category'),
            'mode' => $session->get('mode'),
            'qnum' => $session->get('qnum'),
            'score' => $session->get('score'),
            'lat' => $lat,
            'lon' => $lon
        ];
        $sessionmodel->replace($data);
    }

    public function questsessionxdb()
    {
        $session = \Config\Services::Session();
        $sessionmodel = new QuestSessionModel();
        $sessionmodel->where('session', $session->get('session'))->delete();
    }

    public function startSession()
    {
        ini_set('session.use_cookies', '0');
        ini_set('session.use_only_cookies', 0);
        ini_set('session.use_trans_sid', 1);

        if(isset($_GET['PHPSESSID']))
            session_id($_GET['PHPSESSID']);

        $session = \Config\Services::Session();
        
        return $session;
    }
}