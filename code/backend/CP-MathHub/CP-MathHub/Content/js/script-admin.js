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

function spinDurationBanReason() {
    $('#spinner4').spinner({ value: 0, step: 1, min: 0, max: 365 });
}

function blockUser(id) {
    //var id = $(".selectpicker.blockday").attr("mh-id");
    var duration = parseInt($("#dayresult-" + id).val().split(' ngày'));
    var description = $("#des-" + id).val();
    var status = 2;
    $.ajax({
        method: "POST",
        url: "/Admin/BlockUser",
        data: { Duration: duration, BannedUserId: id, Description: description, Status: status }
    })
      .done(function (msg) {
          //if (msg) {
          //    add(msg);
          //} else {
          //    alert("false");
          //}
      })
      .fail(function () {
          alert("Khóa tài khoản này thất bại!");
      });
        //var hidden = "<input type='hidden' name='TagIds' value='" + tagId + "' />"
        //var item = "<span class='mh-tag-item'>"
        //            + "<span>"
        //            + tagName
        //            + "</span>"
        //            + "<i class='fa fa-times-circle' onclick='removeTag(this)'></i>"
        //            + hidden
        //            + "</span>";
        //var list = $("#mh-tag-list");
        //$("#mh-input-tag").val("");
        //$("#mh-input-tag").focus();
        //autocomplete.hide();
        //if (!tagIds[tagId]) {
        //    tagIds[tagId] = tagName;
        //    list.append($(item));
}

function ManageInfracPosts_blockday() {
    $('.selectpicker').selectpicker();

    $('select[name=selValue]').val(1);
    $('.selectpicker').selectpicker('refresh');

    $('.selectpicker.blockday').on('change', function () {
        var temp2 = $('.selectpicker.blockday').val();
        var total = 0;
        for (var i = 0; i < temp2.length; i++) {
            total += +temp2[i];
        }
        $('#dayresult-1').val(total + " ngày");
    });
}

function ManageInfracPosts_edittable() {
    $('#editable-manageInfracPosts').dataTable({
        "aLengthMenu": [
            [5, 15, 20, -1],
            [5, 15, 20, "All"] // change per page values here
        ],
        // set the initial value
        "iDisplayLength": 5,
        "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>",
        "sPaginationType": "bootstrap",
        "oLanguage": {
            "sLengthMenu": "Hiện _MENU_ bài viết ở một trang",
            "oPaginate": {
                "sPrevious": "Trước",
                "sNext": "Sau"
            },
            "sSearch": "Tìm kiếm",
            "sInfo": "Hiển thị từ _START_ đến _END_ của _TOTAL_ mục"
        },
        "aoColumnDefs": [{
            'bSortable': false,
            'aTargets': [6, 7]
        }
        ]
    });

    jQuery('#editable-manageInfracPosts_wrapper .dataTables_filter input').addClass("form-control medium"); // modify table search input
    jQuery('#editable-manageInfracPosts_wrapper .dataTables_length select').addClass("form-control xsmall"); // modify table per page dropdown
}
function tableTag() {
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
            //blockUser(id);
            break;
        case "ManageRules":
            tableRule();
            spinDurationBanReason();
            break;
        case "ManageInfracPosts":
            ManageInfracPosts_blockday();
            ManageInfracPosts_edittable();
            break;
        case "ManageTags":
            tableTag();
        default:
            break;
    }
});