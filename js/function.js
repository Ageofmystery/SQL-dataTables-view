jQuery(function($){
    $('#prime-table').DataTable( {
        "processing": true,
        "serverSide": true,
        "ajax": "./server-response.php"
    } );
});