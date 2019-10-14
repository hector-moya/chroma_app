<?php
class Crud
{
    private $conn;

    //construct with db
    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function readGrades()
    {
        $query = "SELECT * FROM grades";
        // PREPARE STATEMENT
        $stmt = $this->conn->prepare($query);

        // Execute query
        $stmt->execute();

        return $stmt;
    }
    public function readMediums()
    {
        $query = "SELECT * FROM mediums";
        // PREPARE STATEMENT
        $stmt = $this->conn->prepare($query);

        // Execute query
        $stmt->execute();

        return $stmt;
    }
    public function readProducts()
    {
        $gradeID = $_SESSION['Obj']->gradeID;
        $mediumID = $_SESSION['Obj']->mediumID;
        $query = "SELECT * FROM products WHERE gradeID = '$gradeID' AND mediumID = '$mediumID'";
        // PREPARE STATEMENT
        $stmt = $this->conn->prepare($query);

        // Execute query
        $stmt->execute();

        return $stmt;
        session_unset($_SESSION['Obj']->gradeID);
        session_unset($_SESSION['Obj']->mediumID);
    }

    public function readRoles()
    {
        $query = "SELECT * FROM roles";
        // PREPARE STATEMENT
        $stmt = $this->conn->prepare($query);

        // Execute query
        $stmt->execute();

        return $stmt;
    }
    public function readProductInformation()
    {
        $gradeID = $_SESSION['Obj']->gradeID;
        $mediumID = $_SESSION['Obj']->mediumID;
        $query = "SELECT products.productName, grades.gradeName, mediums.mediumName, products.colourRange, consistencies.consistencyName, products.productDescription, manufacturers.manufacturerName FROM `products`
        INNER JOIN grades ON products.gradeID = grades.gradeID
        INNER JOIN consistencies ON products.consistencyID = consistencies.consistencyID
        INNER JOIN manufacturers ON products.manufacturerID = manufacturers.manufacturerID
        INNER JOIN mediums ON products.mediumID = mediums.mediumID WHERE grades.gradeID = '$gradeID' AND mediums.mediumID = '$mediumID'";
        // PREPARE STATEMENT
        $stmt = $this->conn->prepare($query);

        // Execute query
        $stmt->execute();

        return $stmt;
        session_unset($_SESSION['Obj']->gradeID);
        session_unset($_SESSION['Obj']->mediumID);
    }
    public function addUser($firstName, $lastName, $role, $email, $password, $mobile)
    {
        $query = "INSERT INTO `users`
    (`userName`, `userSurname`, `role`, `email`, `password`, `dateCreated`, `mobile`)
    VALUES
    ('$firstName', '$lastName', '$role', '$email', '$password', now(), '$mobile');";
        $stmt = $this->conn->prepare($query);

        $stmt->execute();
    }

    public function addLogs($sessionID, $referrer, $ipAddress, $url, $userID)
    {
        try {

            if (empty($userID)) {

                $query = "INSERT INTO logs (sessionNumber, referrer, ipAddress, date, url, userID) 
                VALUES('$sessionID','$referrer', '$ipAddress', now(), '$url', null);";
                $stmt = $this->conn->prepare($query);

                $stmt->execute();
                return $stmt;
            } else {

                $query = "INSERT INTO logs (sessionNumber, referrer, ipAddress, date, url, userID) 
                VALUES('$sessionID','$referrer', '$ipAddress', now(), '$url', '$userID');";
                $stmt = $this->conn->prepare($query);

                $stmt->execute();
                return $stmt;
            }
        } catch (PDOException $ex) {
            throw $ex;
        }
    }
    public function updUser($updUser)
    {

        try {
            //check if user exist
            $userID = $this->findUser();
            $retrieveID = "SELECT * FROM users WHERE userID = '$userID'";
            $stmt2 = $this->conn->prepare($retrieveID);

            // get user data
            $stmt2->execute();
            $getValues = $stmt2->fetchAll(PDO::FETCH_ASSOC);
            json_encode($getValues);
            $data = json_decode($getValues, true);
            if (!empty([$data])) {

                $firstName = $data['first_name'];
                $lastName = $data['last_name'];
                $role = $data['role'];
                $email = $data['email'];
                $pass = $data['password'];
                $mobile = $data['mobile'];
            }
            // compare input data to user data
            if ($updUser = $firstName) {
                $updQuery = "UPDATE `users` SET `userName` = '$updUser'";
                $stmt = $this->conn->prepare($updQuery);

                $stmt->execute();
                return $stmt;
            } else if ($updUser = $lastName) {
                $updQuery = "UPDATE `users` SET `userName` = '$updUser'";
                $stmt = $this->conn->prepare($updQuery);

                $stmt->execute();
                return $stmt;
            } else if ($updUser = $role) {
                $updQuery = "UPDATE `users` SET `userName` = '$updUser'";
                $stmt = $this->conn->prepare($updQuery);

                $stmt->execute();
                return $stmt;
            } else if ($updUser = $email) {
                $updQuery = "UPDATE `users` SET `userName` = '$updUser'";
                $stmt = $this->conn->prepare($updQuery);

                $stmt->execute();
                return $stmt;
            } else if ($updUser = $pass) {
                $updQuery = "UPDATE `users` SET `userName` = '$updUser'";
                $stmt = $this->conn->prepare($updQuery);

                $stmt->execute();
                return $stmt;
            } else if ($updUser = $mobile) {
                $updQuery = "UPDATE `users` SET `userName` = '$updUser'";
                $stmt = $this->conn->prepare($updQuery);

                $stmt->execute();
                return $stmt;
            }
        } catch (PDOException $ex) {
            throw $ex;
        }
    }
    public function getUserName()
    {
        $userID = $_SESSION['Obj']->userID();

        $query = "SELECT userName FROM users WHERE userID = '$userID'";
        $result = $this->conn->prepare($query);
        $result->execute();
        //if user exist fetch id
        //$theone = $result->fetch(PDO::FETCH_OBJ);

        return $result;
    }
    public function getUserInfo()
    {
        $userID = $_SESSION['Obj']->userID();
        if (!empty($userID)) {
            $query = "SELECT userName, email, mobile FROM users WHERE userID = '$userID'";
            // PREPARE STATEMENT
            $stmt = $this->conn->prepare($query);

            // Execute query
            $stmt->execute();

            return $stmt;
        } else {
            echo json_encode(
                array('message' => 'Not enough privileges')
            );
        }
    }
    public function findUser()
    {

        $userEmail = $_SESSION['Obj']->userEmail();
        if (!empty($userEmail)) {
            $query = "SELECT email FROM users WHERE email = ?";
            $result = $this->conn->prepare($query);
            $result->execute(array($userEmail));
            //if user exist fetch id
            if ($result->fetch()) {
                $userLogged = "SELECT `userID` FROM `users` WHERE `email` = '$userEmail';";
                $userFound = $this->conn->query($userLogged);

                while ($retrieveUser = $userFound->fetch(PDO::FETCH_OBJ)) {
                    $userID = $retrieveUser->userID;
                }
                return $userID;
            }
        } else {
            $userID = null;
            return $userID;
        }
    }
    public function checkEmailAdd()
    {
        $userEmail = $_SESSION['Obj']->userEmail();

        $query = "SELECT email FROM users WHERE email = ?";
        $result = $this->conn->prepare($query);
        $result->execute(array($userEmail));
        //if user exist fetch id
        if ($result->fetch()) {

            return true;

            /*$userLogged = "SELECT `userID` FROM `users` WHERE `userName` = '$userName';";
            $userFound = $this->conn->query($userLogged);

            while ($addUser = $userFound->fetch(PDO::FETCH_OBJ)) {
                $userID = $addUser->userID;
            }
            return $userID;*/
        } else {

            return false;
        }
    }
    public function passwordCheck()
    {
        $userEmail = $_SESSION['Obj']->userEmail();
        $password = $_SESSION['Obj']->pass;
        try {
            $stmt = $this->conn->prepare("SELECT * FROM users WHERE email=:email");
            $stmt->bindParam('email', $userEmail);
            $stmt->execute();
            $row = $stmt->fetch();

            if (password_verify($password, $row['password'])) {


                /*echo json_encode(
                    array(
                        'user_name' => $row['userName'],
                        'user_surname' => $row['userSurname'],
                        'user_role' => $row['role'],
                        'user_mobile' => $row['mobile']
                    )
                );*/ } else {
                echo json_encode(
                    array(
                        'message' => 'Wrong email or password'
                    )
                );
                die;
            }
        } catch (PDOException $e) {
            echo "Account creation problems" . $e->getMessage();
            die();
        }
    }
}
