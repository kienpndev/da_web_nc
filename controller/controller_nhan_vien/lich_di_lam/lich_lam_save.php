<?php 
require_once('../controller/connection.php');
if($_SERVER['REQUEST_METHOD'] !='POST'){
    $mysqli->close();
    exit;
}
extract($_POST);
$allday = isset($allday);

if(empty($id)){
    $sql = "INSERT INTO `schedule_list` (`title`,`description`,`start_datetime`,`end_datetime`) VALUES ('$title','$description','$start_datetime','$end_datetime')";
}else{
    $sql = "UPDATE `schedule_list` set `title` = '{$title}', `description` = '{$description}', `start_datetime` = '{$start_datetime}', `end_datetime` = '{$end_datetime}' where `id` = '{$id}'";
}
$save = $mysqli->query($sql);
if($save){
    echo "<script> alert('thêm lịch học thành công.'); location.replace('./lich_di_lam.php') </script>";
}else{
    echo "<pre>";
    echo "An Error occured.<br>";
    echo "Error: ".$mysqli->error."<br>";
    echo "SQL: ".$sql."<br>";
    echo "</pre>";
}
$mysqli->close();
?>