<?php include 'connect-base.php'; //import db connection

//get data from form
$form_content = $_REQUEST['form_content'];

//get object from serialize data
parse_str($_REQUEST['form_content'], $data);

//declare id
$data_id = $data['id'];

//convert our data format to sql datetime format
$fullFormat = explode(" ",$data['datereg']);
$dateFormat  = explode(".",$fullFormat[0]);
$timeFormat  = explode(":",$fullFormat[1]);
$finalDate = $dateFormat[2]."-".$dateFormat[1]."-".$dateFormat[0]." ". $timeFormat[0].":".$timeFormat[1].":".$timeFormat[2];

//begin to construct sql update request by concatinating data
$sql = "UPDATE `user_datainfo` SET ";
$sql .= "`first_name` = '" . $data['firstname'] . "', ";
$sql .= "`last_name` = '" . $data['lastname'] . "', ";
$sql .= "`birthplace` = '" . $data['birthplace'] . "', ";
$sql .= "`profession` = '" . $data['profession'] . "', ";
$sql .= "`phonenumber` = '" . $data['phonenumber'] . "', ";
$sql .= "`datetime` = '" . $finalDate . "' ";
$sql .= "WHERE id = '" . $data['id'] . "'";

//test for no empty id
if (!empty($data_id)) {
    //send request to base and updatind data
    $query = $mysqli->query($sql) or die("Error with updating");
}
//close connection
$mysqli->close();
