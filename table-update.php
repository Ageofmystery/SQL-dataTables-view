<?php include 'connect-base.php'; //import db connection

//get data from form
$form_content = $_REQUEST['form_content'];

//get object from serialize data
parse_str($_REQUEST['form_content'], $data);

//declare id
$data_id = $data['id'];

//begin to construct sql update request by concatinating data
$sql = "UPDATE `user_datainfo` SET ";
$sql .= "`first_name` = '" . $data['firstname'] . "', ";
$sql .= "`last_name` = '" . $data['lastname'] . "', ";
$sql .= "`birthplace` = '" . $data['birthplace'] . "', ";
$sql .= "`profession` = '" . $data['profession'] . "', ";
$sql .= "`phonenumber` = '" . $data['phonenumber'] . "', ";
$sql .= "`datetime` = '" . $data['datereg'] . "' ";
$sql .= "WHERE id = '" . $data['id'] . "'";

//test for no empty id
if (!empty($data_id)) {
    //send request to base and updatind data
    $query = $mysqli->query($sql) or die("Error with updating");
}
//close connection
$mysqli->close();
