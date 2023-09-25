<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (is_file(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Quiz');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
$routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

 // api call to get challenge leader-board
$routes->get('getleaderboard', 'Leaderboard::getleaderboard');
// $routes->get('sgetleaderboard', 'Leaderboard::getsorted');

$routes->get('leaderboard', 'Leaderboard::leaderboard');

$routes->get('scorepanel/(:any)', 'Leaderboard::scorepanel/$1');

$routes->post('addtoscore', 'Leaderboard::addtoscore');

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Quiz::index');
// api call get categories - optional call to discover new categories
$routes->get('getcategories', 'Quiz::getcategories');
// api call start quiz requires uri segment specifying player name e.g. startquiz/jonathan uri segment to pick category is optional e.g. startquiz/jonathan/math
$routes->get('startquiz', 'Quiz::startquiz');
$routes->get('startquiz/(:any)', 'Quiz::startquiz/$1');
// api call get question
$routes->get('getquestion', 'Quiz::getquestion');
// api call answer question requires uri segment specifying the answer e.g. startquiz/preston
$routes->get('answerquestion', 'Quiz::answerquestion');
$routes->get('answerquestion/(:any)', 'Quiz::answerquestion/$1');
// api call status - optional call to check status
$routes->get('status', 'Quiz::status');
//api call to get quiz high scores
$routes->get('gethighscores', 'Quiz::gethighscores');
$routes->get('gethighscores/(:any)', 'Quiz::gethighscores/$1');
// api call to submit quiz high-scores
$routes->get('submithighscore', 'Quiz::submithighscore');
// api call to end game in play
$routes->get('endgame', 'Quiz::endgame');
// api call to get active game sessions
$routes->get('activegames', 'Quiz::activegames');

// quest mode starts here

$routes->get('quest', 'Quest::index');
// api call status - optional call to check status
$routes->get('quest/status', 'Quest::status');

$routes->get('quest/startquest', 'Quest::startquest');
$routes->get('quest/startquest/(:any)', 'Quest::startquest/$1');

$routes->get('quest/getriddle', 'Quest::getriddle');

$routes->get('quest/solveriddle', 'Quest::solveriddle');
$routes->get('quest/solveriddle/(:any)', 'Quest::solveriddle/$1');

$routes->get('quest/submitlocation/(:any)', 'Quest::submitlocation/$1');

$routes->get('quest/endquest', 'Quest::endquest');

$routes->get('quest/activequests', 'Quest::activequests');

$routes->get('quest/getclue', 'Quest::getclue');

$routes->get('quest/shuffle', 'Quest::shuffle');
// api call to get high scores
$routes->get('quest/gethighscores', 'Quest::gethighscores');
// api call to submit quiz high-scores
$routes->get('quest/submithighscore', 'Quest::submithighscore');

// utilities

/* $routes->get('md5', 'Utility::md5hash');
$routes->get('md5/(:any)', 'Utility::md5hash/$1');

$routes->get('sha256', 'Utility::sha256hash');
$routes->get('sha256/(:any)', 'Utility::sha256hash/$1');
 */
$routes->get('hash', 'Utility::hash');
$routes->get('hash/(:any)', 'Utility::hash/$1');

$routes->get('dummyusers', 'Utility::dummyusers');


/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
