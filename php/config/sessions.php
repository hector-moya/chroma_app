<?php
class Session
{

    
    public $userName;
    public $userSurname;
    public $userRole;
    public $userMobile;
    public $userEm;
    public $pass;
    public $userID;
    public $gradeID;
    public $mediumID;

    //construct with db


    private $signed_in = false;
    //public $user_session = session_status() !== '';

    public function __construct()
    {
        if ($this->is_session_started() === FALSE);

        
    }

    //check if session was intantiated
    public function is_session_started()
    {
        if (php_sapi_name() !== 'cli') {
            if (version_compare(phpversion(), '5.4.0', '>=')) {
                return session_status() === PHP_SESSION_ACTIVE ? TRUE : FALSE;
            } else {
                return session_id() === '' ? FALSE : TRUE;
            }
        }
        return FALSE;
    }

    //asign session

    public function hasSession()
    {
        if ($this->is_session_started() === TRUE) {
            $this->signed_in = TRUE;
        }
        return $this->signed_in;
    }

    //asign user_name cookie to session user_name

    /*public function userName()
    {
        if (empty($this->userNm)) {
            $this->userName = null;
        } else {
            $this->userName = $this->userNm;

            return $this->userName;
        }
    }*/
    public function userID() {
        if (empty($this->userID)) {
            $this->userIdentity = null;
            
        } else {
            $this->userIdentity = $this->userID;

            return $this->userIdentity;
        }
    }
    public function userEmail() {
        if (empty($this->userEm)) {
            $this->userEmail = null;
            die;
        } else {
            $this->userEmail = $this->userEm;

            return $this->userEmail;
        }
    }

    //unset user session
    /*public function logout()
    {
        unset($_SESSION['user_session']);
        unset($this->user_session);
        $this->signed_in = false;
    }*/


    public function getSessionId()
    {
        $this->sessionID = session_id();
        return $this->sessionID;
    }


    //Get referrer if not set deny acces    
    public function getReferrer()
    {

        if (!isset($_SERVER['HTTP_REFERER'])) {
            header('Location: index.html');
            exit;
        } else {
            $this->referrer = $_SERVER['HTTP_REFERER'];
            return $this->referrer;
        }
    }

    //get IP address if not deny access    
    public function getIpAddress()
    {
        if (!isset($_SERVER['REMOTE_ADDR'])) {
            header('Location: index.html');
            exit;
        } else {
            $this->ipAddress = $_SERVER['REMOTE_ADDR'];
            return $this->ipAddress;
        }
    }

    //get URL
    public function getURL()
    {
        $this->url = $_SERVER['REQUEST_URI'];
        return $this->url;
    }

    // What code goes here?
    // limit request to 1 per second
    public function limitAccessTime()
    {

        //if last time request less than 1 per second die
        if (isset($this->last_request)) {
            if (time() - $this->last_request < 1) {
                echo json_encode(
                    array(
                        'message' => 'Too many request',
                        'Seconds since last request' => time() - $this->last_request
                    )
                );
                die('Too many request');
                //reset time for session last time
                $this->last_request = time();

                // if time - session_last time is greater than 0 keep working

            } else if (time() - $this->last_request > 0) {
                return TRUE;
                /*echo json_encode(
                    array(
                        'message' => 'Request accepted',
                        'Seconds since last request' => time() - $_SESSION['last_request']
                    )
                );*/
                $this->last_request = time();
            }
        } else {
            // session not set yet, set it now
            $this->last_request = time();
        }
    }

    //limit request to 1000 every 24 hours
    public function limitReq()
    {
        //set session counter
        if (!isset($this->reqCounter)) {
            $this->reqCounter = 0;
        }
        // if count is greater than 0 add one
        if (count($_REQUEST) > 0) {
            $this->numReq = $this->reqCounter++;
            return TRUE;
            /*echo json_encode(
                array(
                    'message' => 'Request accepted',
                    'Number of request' => $numReq
                )
            );*/
        }


        //set session_time
        if (!isset($this->creationTime)) {
            $this->creationTime = time();
        }

        //if time now - sessoin_time still today
        if (time() - $this->creationTime <= 60 * 60 * 24) {
            //else unset session_time & counter
        } else {
            unset($this->creationTime);
            unset($this->creationTime);
            //destroy session
        }
        // if count is greater than 1000 die
        if ($this->numReq > 100000) {

            die('Limit reach');
        }
    }

    //not working | not nessesary

    /* public function unsetUserName() {
        if (!isset($_SESSION['nameCounter'])) {
            $_SESSION['nameCounter'] = 0;
        }
        if (count($_SESSION['user_name']) > 0) {
            $numReq = $_SESSION['nameCounter']++;
            return TRUE;
            /*echo json_encode(
                array(
                    'message' => 'Request accepted',
                    'Number of request' => $numReq
                )
            );
        }
        if ($numReq > 1) {

            unset($_SESSION['user_name']);
        }
    }*/
}
