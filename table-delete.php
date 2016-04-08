<?php include 'connect-base.php'; //import db connection

//get id data frem ajax
$data_id = $_REQUEST['data_id'];

//test for no empty id
if (!empty($data_id)) {
    //construct our request to base
    $sql = "DELETE FROM user_datainfo ";
    $sql .= " WHERE id = '" . $data_id . "'";
    //put request and delete all row
    $query = mysqli_query($mysqli, $sql) or die("Error with deleting");
}
//close connection
$mysqli->close();