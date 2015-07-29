/*
    Select Picker
*/
function selectPicker() {
    $('.selectpicker').selectpicker();
}

/*
    Select Picker: select value
*/
function selectValue() {
    $('select[name=selValue]').val(1);
    $('.selectpicker').selectpicker('refresh');
}

/*
    Select Picker: select value after calculator
*/
function selectValuePlus() {

    $('.selectpicker.blockday').change(function () {
        var temp2 = $(this).val();
        var id = $(this).attr("mh-id");
        var total = 0;
        for (var item in temp2) {
            total += +temp2[item];
        }
        $('#dayresult-' + id).val(total + " ngày");
    });
}

/*
    Data table: manage users
*/
function tableManageUsers() {
    $('#editable-manageUser').dataTable({
        "aLengthMenu": [
            [5, 15, 20, -1],
            [5, 15, 20, "Tất cả"] // change per page values here
        ],
        // set the initial value
        "iDisplayLength": 5,
        "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>",
        "sPaginationType": "bootstrap",
        "oLanguage": {
            "sLengthMenu": "Hiện _MENU_ người dùng ở một trang",
            "oPaginate": {
                "sPrevious": "Trước",
                "sNext": "Sau"
            },
            "sSearch": "Tìm kiếm",
            "sInfo": "Hiển thị từ _START_ đến _END_ của _TOTAL_ mục."
        },
        "aoColumnDefs": [{
            'bSortable': false,
            'aTargets': [0, 7]
        }
        ]
    });

    $('#editable-manageUser_wrapper .dataTables_filter input').addClass("form-control medium"); // modify table search input
    $('#editable-manageUser_wrapper .dataTables_length select').addClass("form-control xsmall"); // modify table per page dropdown
}

function tableRule() {
    jQuery(document).ready(function () {
        EditableTable.init();
    });
}

$(document).ready(function () {
    switch ($("#mh-page").val()) {
        case "ManageUsers":
            selectPicker();
            selectValue();
            selectValuePlus();
            tableManageUsers();
            break;
        case "ManageRules":
            tableRule();
            break;
        default:
            break;
    }
});