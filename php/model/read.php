<?php
//headers
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

include_once '../config/sessions.php';
include_once '../config/database.php';
include_once '../model/crud.php';
session_start();

//instantiate DB connect

$database = new Database;
$db = $database->connect();
//Instantiate session
//$session = new Session($db);
if (!isset($_SESSION['Obj'])) {
    $_SESSION['Obj'] = new Session();
}

//$useName = $_SESSION['Obj']->userName;

// Instantiate crud object
$crudObj = new Crud($db);
// crud get query
function inputFilter($dataFilter)
{
    $dataFilter = trim($dataFilter);
    $dataFilter = stripslashes($dataFilter);
    $dataFilter = htmlspecialchars($dataFilter);

    return $dataFilter;
}
$_SESSION['Obj']->limitAccessTime();
$_SESSION['Obj']->limitReq();

if (isset($_GET['req_func'])) {
    $sessionID = $_SESSION['Obj']->getSessionId(); // defined in the sessions.php file get session number
    $referer = $_SESSION['Obj']->getReferrer(); //get referrer
    $ipAddress = $_SESSION['Obj']->getIpAddress(); //get IP address
    $url = $_SESSION['Obj']->getURL(); //get URL

    if ($_GET['req_func'] == 'readRoles') {
        $result = $crudObj->readRoles();
        $num = $result->rowCount();
        //Check if any roles
        if ($num > 0) {

            $resArray = $result->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($resArray);
        }
        /*$result1 = $crudObj->findUser();
        $num1 = $result1->rowCount();
        //Check if any roles
        if ($num1 > 0) {

            $resArray1 = $result1->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($resArray1);
        }*/ else {
            echo json_encode(
                array('message' => 'No Role Found')
            );
        }
    };
    if ($_GET['req_func'] == 'readGrades') {
        $result = $crudObj->readGrades();
        $num = $result->rowCount();
        //Check if any roles
        if ($num > 0) {

            $resArray = $result->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($resArray);
        } else {
            echo json_encode(
                array('message' => 'No Grade Found')
            );
        }
    };
    if ($_GET['req_func'] == 'readMediums') {
        $result = $crudObj->readMediums();
        $num = $result->rowCount();
        //Check if any roles
        if ($num > 0) {

            $resArray = $result->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($resArray);
        } else {
            echo json_encode(
                array('message' => 'No Grade Found')
            );
        }
    };
    if ($_GET['req_func'] == 'getGrade') {
        
        $content = file_get_contents("php://input");
        $value = json_decode($content, true);
        if (!empty($value)) {
            $grade = !empty($value['gradeID']) ? inputFilter(($value['gradeID'])) : null;            
        }
        $_SESSION['Obj']->gradeID = $grade;
        echo json_encode(array(
            'message' => $_SESSION['Obj']->gradeID
        ));
    }
    if ($_GET['req_func'] == 'getMedium') {
        
        $content = file_get_contents("php://input");
        $value = json_decode($content, true);
        if (!empty($value)) {
            $medium = !empty($value['mediumID']) ? inputFilter(($value['mediumID'])) : null;            
        }
        $_SESSION['Obj']->mediumID = $medium;
        echo json_encode(array(
            'message' => $_SESSION['Obj']->mediumID
        ));
    }
    if ($_GET['req_func'] == 'readProducts') {
        $result = $crudObj->readProducts();
        $num = $result->rowCount();
        //Check if any roles
        if ($num > 0) {

            $resArray = $result->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($resArray);
        } else {
            echo json_encode(
                array('message' => 'No Grade Found')
            );
        }
    };
    if ($_GET['req_func'] == 'readProductInformation') {
        $result = $crudObj->readProductInformation();
        $num = $result->rowCount();
        //Check if any product
        if ($num > 0) {

            $resArray = $result->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($resArray);
        } else {
            echo json_encode(
                array('message' => 'No Role Found')
            );
        }
    };
    if ($_GET['req_func'] == 'addUser') {

        $content = file_get_contents("php://input");
        $data = json_decode($content, true);
        if (!empty($data)) {

            $firstName = !empty($data['first_name']) ? inputFilter(($data['first_name'])) : null;
            $lastName = !empty($data['last_name']) ? inputFilter(($data['last_name'])) : null;
            $role = !empty($data['role']) ? inputFilter(($data['role'])) : null;
            $email = !empty($data['email']) ? inputFilter(($data['email'])) : null;
            $mypass = !empty($data['password']) ? inputFilter(($data['password'])) : null;
            $mobile = !empty($data['mobile']) ? inputFilter(($data['mobile'])) : null;

            $password = password_hash($mypass, PASSWORD_DEFAULT);
        }

        if (empty($firstName)) {
            echo json_encode(array('message' => 'Name is required'));
            die;
        }

        if (empty($lastName)) {
            echo json_encode(array('message' => 'Last name is required'));
            die;
        }
        if (empty($role)) {
            echo json_encode(array('message' => 'Role is required'));
            die;
        }
        if (empty($email)) {
            echo json_encode(array('message' => 'Email is required'));
            die;
        }
        if (empty($password)) {
            echo json_encode(array('message' => 'Password is required'));
            die;
        }
        if (empty($mobile)) {
            echo json_encode(array('message' => 'Mobile is required'));
            die;
        }



        //echo $firstName, $lastName, $role, $email, $pass;

        $_SESSION['Obj']->userEm = $email;
        $_SESSION['Obj']->userNm = $firstName;
        $emailMessage = $crudObj->checkEmailAdd();
        if ($emailMessage == true) {
            echo json_encode(
                array(
                    'message' => 'Email already registered'
                )
            );
        } else if ($emailMessage == false) {
            $result = $crudObj->addUser($firstName, $lastName, $role, $email, $password, $mobile);
            echo json_encode($crudObj->findUser());
        }
        //echo json_encode($crudObj->findUser());

    }
    if ($_GET['req_func'] == 'updUser') {

        $content = file_get_contents("php://input");
        $data = json_decode($content, true);
        if (!empty([$data])) {

            $updUser = !empty($data['update_user']) ? inputFilter(($data['update_user'])) : null;
        }

        echo $updUser;

        $result = $crudObj->updUser($updUser);
    }
    if ($_GET['req_func'] == 'login') {
        $content = file_get_contents("php://input");
        $value = json_decode($content, true);
        if (!empty($value)) {
            $userEmail = !empty($value['email']) ? inputFilter(($value['email'])) : null;
            $password = !empty($value['password']) ? inputFilter(($value['password'])) : null;
        }
        $_SESSION['Obj']->pass = $password;
        $_SESSION['Obj']->userEm = $userEmail;
        $_SESSION['Obj']->userID = $crudObj->findUser();

        //$crudObj->passwordCheck();
        $decode = $crudObj->passwordCheck();
        //$data = json_decode($decode, true);
        echo json_encode(array(
            'message' => 'logged'
        ));
        /*if (!empty($data)) {
            //assign user data to session
            $_SESSION['Obj']->userName = $data['user_name'];
            echo $_SESSION['Obj']->userID(), $data['user_name'], 'hola';
            $_SESSION['Obj']->userSurname = $data['user_surname'];
            $_SESSION['Obj']->userRole = $data['user_role'];
            $_SESSION['Obj']->userMobile = $data['user_mobile'];
        }*/
    }
    if ($_GET['req_func'] == 'getUserInfo') {
        if (!empty($crudObj->getUserInfo())) {
            $result = $crudObj->getUserInfo();
            $num = $result->rowCount();
            //Check if any product
            if ($num > 0) {

                $resArray = $result->fetchAll(PDO::FETCH_ASSOC);
                echo json_encode($resArray);
                /*echo json_encode(
                    array( 
                        'message' => 'you suck'
                    )
                    );*/
            } else {
                echo json_encode(
                    array('message' => 'Error')
                );
            }
        }
    }
    if ($_GET['req_func'] == 'getUserName') {
        
        //echo $_SESSION['Obj']->userID();
        if ($_SESSION['Obj']->userID() > 0) {
            $userName = $crudObj->getUserName();
            $resArray = $userName->fetchAll(PDO::FETCH_OBJ);
            echo json_encode($resArray[0]);
            
        } else {
            $userName = 'Anonymous Visitor';//$_SESSION['Obj']->userID();
            echo json_encode(
                array('user_name' => $userName)
            );
        }
    }


    //limit access time per second and mounts per day
    if ($_SESSION['Obj']->hasSession() == TRUE) {
        if (empty($crudObj->findUser())) {

            $crudObj->addLogs($sessionID, $referer, $ipAddress, $url, $userID);
        } else {
            $userID = $crudObj->findUser();

            $crudObj->addLogs($sessionID, $referer, $ipAddress, $url, $userID);
        }
    }
}
