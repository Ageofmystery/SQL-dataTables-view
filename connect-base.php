<?php
//connect to sql by this parameters
$nameServer = "localhost";
$nameUser = "root";
$password = "";
$nameDB = "datausers";

//declare sql connection
$mysqli = new mysqli($nameServer, $nameUser, $password, $nameDB) or die("Connection failed: " . mysqli_connect_error());