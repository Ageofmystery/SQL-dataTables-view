jQuery(function ($) {
    //initialize datatables
    var $dataTable = $('#prime-table').dataTable({
        "processing": true,
        "serverSide": true,
        "bPaginate": true,
        "bLengthChange": true,
        "bFilter": true,
        "bSort": true,
        "bInfo": true,
        "bAutoWidth": true,
        "ajax": "./server-response.php"
    });

    //change search mode to keypress on Enter
    $('.dataTables_filter input[type="search"]')
        .unbind()
        .bind('keypress', function (key) {
            if (key.keyCode == 13) {
                $dataTable.fnFilter(this.value);
            }
        });

    $(document)

        //adding to column "action" edit && remove buttons
        .on('click', '.dataTable tr', function () {
            var $actionButtons = '<button class="edit">U</button>' + '<button class="remove">D</button>';
            $('.dataTable tr').removeClass('current');
            $(this).addClass('current');
            $('.dataTable tr > td:last-child').empty();
            $(this).find('td:last-child').append($actionButtons);
        })

        //by clicking remove get id from table and send to php for deleting from base, when it done - ajax reload table
        .on('click', '.remove', function () {
            var $userId = $(this).closest('tr').find('td:first-child').text();
            var $idStr = $userId.toString();
            $.ajax({
                type: "POST",
                url: "./table-delete.php",
                data: {data_id: $idStr},
                success: function () {
                    $dataTable.api().draw();
                    alert('Remove success!');
                },
                error: function () {
                    alert('Error removing!')
                }
            });
        })

        //by clicking edit get data from table and put this to inputs value, on submit send to php for updating data, when it done - ajax reload table
        .on('click', '.edit', function () {
            $('.update-form').addClass('vis');
            var $userId = $(this).closest('tr').find('td:first-child').text();
            var $idStr = $userId.toString();

            var $firstName = $(this).closest('tr').find('td:nth-child(2)').text();
            var $lastName = $(this).closest('tr').find('td:nth-child(3)').text();
            var $birthplace = $(this).closest('tr').find('td:nth-child(4)').text();
            var $profession = $(this).closest('tr').find('td:nth-child(5)').text();
            var $phone = $(this).closest('tr').find('td:nth-child(6)').text();
            var $datetime = $(this).closest('tr').find('td:nth-child(7)').text();

            $('.btn-cancel, .btn-sub').on('click', function () {
                $('.update-form').removeClass('vis');
            });
            $('#id').val($idStr);
            $('#first_name').val($firstName);
            $('#last_name').val($lastName);
            $('#birthplace').val($birthplace);
            $('#profession').val($profession);
            $('#phonenumber').val($phone);
            $('#date_reg').val($datetime);

        });

    //prevent from reload page, get all serialize data from inputs
    $('.submit-form').on('submit', function (e) {
        e.preventDefault();
        var $form = $(this);
        $.ajax({
            type: "POST",
            url: './table-update.php',
            data: {
                form_content: $form.serialize()
            },
            success: function () {
                $dataTable.api().draw();
                alert('Update success!');
            },
            error: function () {
                alert('Error updating!')
            }
        });
    })
});