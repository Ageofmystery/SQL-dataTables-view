<?php

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Easy set variables
 */

// DB table to use
$table = 'user_datainfo';

// Table's primary key
$primaryKey = 'id';

// Array of database columns which should be read and sent back to DataTables.
// The `db` parameter represents the column name in the database, while the `dt`
// parameter represents the DataTables column identifier. In this case object
// parameter names
$columns = array(
    array( 'db' => 'id',            'dt' => '0' ),
    array( 'db' => 'first_name',    'dt' => '1' ),
    array( 'db' => 'last_name',     'dt' => '2' ),
    array( 'db' => 'birthplace',    'dt' => '3' ),
    array( 'db' => 'profession',    'dt' => '4' ),
    array( 'db' => 'phonenumber',   'dt' => '5' ),
    array( 'db' => 'datetime',      'dt' => '6', 'formatter' => function( $d, $row ) {
            return date( 'd.m.Y H:i:s', strtotime($d));                 //returning date in need format
        }
    ),
    array( 'db' => 'actions',       'dt' => '7' )
);

// SQL server connection information
$sql_details = array(
    'user' => 'root',
    'pass' => '',
    'db'   => 'datausers',
    'host' => 'localhost'
);


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * If you just want to use the basic configuration for DataTables with PHP
 * server-side, there is no need to edit below this line.
 */

require( 'ssp.class.php' );

echo json_encode(
    SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns )
);