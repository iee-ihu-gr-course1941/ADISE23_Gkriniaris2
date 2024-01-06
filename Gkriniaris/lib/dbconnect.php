<?php

$host='localhost';
$db = 'gkriniaris';
require_once "db_upass.php";

$user=$DB_USER;
$pass=$DB_PASS;


if(gethostname()=='users.iee.ihu.gr') {
	$mysqli = new mysqli($host, $user, $pass, $db,null,'/home/student/it/2018/it185187/run/mysql.sock');
	$mysqli = new mysqli($host, $user, $pass, $db,null,'/home/student/it/2017/it174899/mysql/run/mysql.sock');
} else {
        $mysqli = new mysqli($host, $user, $pass, $db);
}

if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . 
    $mysqli->connect_error . ") " . $mysqli->connect_error;
}
?>
