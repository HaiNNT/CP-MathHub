var tableInfracMainPost;
var tableInfracNormailPost;
var tableInfracUsers;

/*
    Select Picker
*/
function selectPicker() {
    $('.selectpicker').selectpicker();
}
function selectPickerReport() {
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
        //var ids = $(this).prop("selectedOptions").attr("mh-id");
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
    $.fn.dataTable.ext.search.push(
        function (settings, data, dataIndex) {
            var role = data[6] || "";
            var val = $('.selectpicker.roleFilter').val();

            if (val == null) {
                return true;
            }
            else if (val.indexOf(role.trim()) != -1) {
                return true;
            }
            else {
                return false;
            }
        }
    );

    var table = $('#editable-manageUser').DataTable({
        "lengthMenu": [
            [5, 10, 25, 50, -1],
            [5, 10, 25, 50, "Tất cả"]
        ],
        "DisplayLength": 5,
        "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>",
        "sPaginationType": "bootstrap",
        "oLanguage": {
            "sLengthMenu": "Hiện _MENU_ người dùng ở một trang",
            "oPaginate": {
                "sFirst": "Đầu",
                "sPrevious": "Trước",
                "sNext": "Tiếp",
                "sLast": "Cuối"
            },
            "sSearch": "Tìm kiếm",
            "sInfo": "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
            "sProcessing": "Đang xử lý...",
            "sZeroRecords": "Không tìm thấy mục nào phù hợp",
            "sInfoFiltered": "(được lọc từ _MAX_ mục)",
            "sInfoEmpty": "Đang xem 0 đến 0 trong tổng số 0 mục",
            "sEmptyTable": "Không có dữ liệu phù hợp",
            "sInfoPostFix": "",
            "sUrl": ""
        }
        ,
        "aoColumnDefs": [{
            'bSortable': false,
            'aTargets': []
        }
        ]
    });

    $('#editable-manageUser_wrapper .dataTables_filter input').addClass("form-control medium"); // modify table search input
    $('#editable-manageUser_wrapper .dataTables_length select').addClass("form-control xsmall"); // modify table per page dropdown
    

    $('.selectpicker.roleFilter').change(function () {
        table.draw();
    });
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
    var ids = [];
    $($("#select-" + id).prop("selectedOptions")).each(function () {
        ids.push($(this).attr("mh-id"));
    });
    var list = $("#historyBlock-" + id);
    var userstatus = $("#userStatus-" + id)
    var activeButton = $("#activeUser-" + id);
    var deActiveButton = $("#deActiveUser-" + id);
    deActiveButton.text("...");
    $.ajax({
        method: "POST",
        url: "/Admin/BlockUser",
        data: { Duration: duration, BannedUserId: id, Description: description, Status: status, Reasons: ids }
    })
      .done(function (msg) {
          if (msg != "\n") {
              list.html(msg);
              userstatus.html("Bị khóa");
              activeButton.removeClass("hidden");
              deActiveButton.addClass("hidden");
              deActiveButton.text("Khóa");
              alert("Khóa tài khoản thành công!");
          }
          else {
              alert("false");
          }
      })
      .fail(function () {
          alert("Khóa tài khoản này thất bại!");
      });
}

function unBlockUser(id) {
    var status = 1;
    //var list = $("#historyBlock-" + id);
    var userstatus = $("#userStatus-" + id)
    var activeButton = $("#activeUser-" + id);
    var deActiveButton = $("#deActiveUser-" + id);
    activeButton.text("...");
    $.ajax({
        method: "POST",
        url: "/Admin/UnBlockUser",
        data: { BannedUserId: id, Status: status }
    })
      .done(function (msg) {
          if (msg) {
              userstatus.html("Bình thường");
              activeButton.addClass("hidden");
              activeButton.text("Mở khóa");
              deActiveButton.removeClass("hidden");
              alert("Bỏ khóa tài khoản thành công!");
          }
          else {
              alert("false");
          }
      })
      .fail(function () {
          alert("Khóa tài khoản này thất bại!");
      });
}
/*
    Select duplicate tags
*/
function selectTag() {
    var tagID = [];
    $(".selectcheckTag:checked").each(function () {
        tagID.push($(this).val());
    });
    var list = $("#duplicateView");
    $.ajax({
        method: "POST",
        url: "/Admin/GetSelectedTags",
        data: { tagIds: tagID }
    })
      .done(function (msg) {
          if (msg != "\n") {
              list.html(msg);
          }
      })
      .fail(function (msg) {
          alert(msg);
      });
}
function checkSelectItem() {
    var tagID = [];
    $(".selectcheckTag:checked").each(function () {
        tagID.push($(this).val());
    });
    if (tagID.length > 0) {
        $("#btnResultDuplicate").removeClass("hidden");
    }
    else if (tagID.length == 0) {
        $("#btnResultDuplicate").addClass("hidden");
    }
}
function deleteFeedback() {
    var ids = [];
    $(".mail-checkbox:checked").each(function () {
        ids.push($(this).val());
    });
    if (!confirm("Bạn có chắc chắn muốn xóa những ý kiến này.")) {
        return;
    }
    $.ajax({
        method: "POST",
        url: "/Admin/DeleteFeedback",
        data: { ids: ids }
    })
      .done(function (msg) {
          if (msg) {
              location.reload();
          } else {
              alert("Thao tác thất bại");
          }
      })
      .fail(function () {
          alert("Thao tác thất bại");
      });
}
function resultDuplicateTag() {
    var tagID = [];
    var tagName = $("#tagName").val();
    var description = $("#tagDescription").val();
    $(".checkduplicate:checked").each(function () {
        tagID.push($(this).val());
    });
    $.ajax({
        method: "POST",
        url: "/Admin/ResolveDuplicateTags",
        data: { tagIds: tagID, tagName: tagName, description: description }
    })
      .done(function (msg) {
          if (msg) {
              location.reload();
          } else {
              alert("Có lỗi xảy ra");
          }
      })
      .fail(function () {
          alert("Gộp thẻ thất bạn!");
      });
}

function clearBlockUser(id) {
    $("#select-" + id).selectpicker('deselectAll');
    $("#dayresult-" + id).val('');
    $("#des-" + id).val('');
}

function setRuleUser(id) {
    var idCheckbox = "#checkbox-" + id;
    var roleID = [];
    $(idCheckbox + " :checked").each(function () {
        roleID.push($(this).val());
    });
    var names = "";
    $(idCheckbox + " :checked").each(function () {
        names += $(this).attr("mh-name");
    });
    var nameLast = names.slice(0, -1);
    var role = $("#role-" + id);
    $.ajax({
        method: "POST",
        url: "/Admin/SetRoleUser",
        data: { UserId: id, RoleId: roleID }
    })
      .done(function (msg) {
          if (msg) {
              //add(msg);
              role.html(nameLast.trim());
              alert("Thay đổi quyền thành công!")
          } else {
              alert("false");
          }
      })
      .fail(function () {
          alert("Phân quyền cho tài khoản này thất bại!");
      });
}
function ManageInfracPosts_blockday() {
    $('.selectpicker').selectpicker();

    $('select[name=selValue]').val(1);
    $('.selectpicker').selectpicker('refresh');

    
}

function ManageInfracMainPosts_edittable() {
    $.fn.dataTable.ext.search.push(
        function (settings, data, dataIndex) {
            var post = data[0] || "";
            var check = data[1] || "";
            var val = $('.selectpicker.postFilter').val();

            if (val == null) {
                return true;
            }
            else if (val.indexOf(post.trim()) != -1) {
                return true;
            }
            else if (val.indexOf(check.trim()) != -1) {
                return true;
            }
            else {
                return false;
            }
        }
    );
    tableInfracMainPost = $('#editable-manageInfracMainPosts').DataTable({
        "lengthMenu": [
            [5, 10, 25, 50, -1],
            [5, 10, 25, 50, "Tất cả"]
        ],
        "DisplayLength": 5,
        "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>",
        "sPaginationType": "bootstrap",
        "oLanguage": {
            "sLengthMenu": "Hiện _MENU_ bài viết ở một trang",
            "oPaginate": {
                "sFirst": "Đầu",
                "sPrevious": "Trước",
                "sNext": "Tiếp",
                "sLast": "Cuối"
            },
            "sSearch": "Tìm kiếm",
            "sInfo": "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
            "sProcessing": "Đang xử lý...",
            "sZeroRecords": "Không tìm thấy mục nào phù hợp",
            "sInfoFiltered": "(được lọc từ _MAX_ mục)",
            "sInfoEmpty": "Đang xem 0 đến 0 trong tổng số 0 mục",
            "sEmptyTable": "Không có dữ liệu phù hợp",
            "sInfoPostFix": "",
            "sUrl": ""
        },
        "aoColumnDefs": [{
            'bSortable': false,
            'aTargets': [8,9]
        }
        ]
    });

    jQuery('#editable-manageInfracMainPosts_wrapper .dataTables_filter input').addClass("form-control medium"); // modify table search input
    jQuery('#editable-manageInfracMainPosts_wrapper .dataTables_length select').addClass("form-control xsmall"); // modify table per page dropdown

    $('.selectpicker.postFilter').change(function () {
        tableInfracMainPost.draw();
    });
}
function ManageInfracNormalPosts_edittable() {
    $.fn.dataTable.ext.search.push(
        function (settings, data, dataIndex) {
            var normalPost = data[0] || "";
            var check = data[1] || "";
            var val = $('.selectpicker.normalPostFilter').val();

            if (val == null) {
                return true;
            }
            else if (val.indexOf(normalPost.trim()) != -1) {
                return true;
            }
            else if (val.indexOf(check.trim()) != -1) {
                return true;
            }
            else {
                return false;
            }
        }
    );
    tableInfracNormailPost = $('#editable-manageInfracNormalPosts').DataTable({
        "lengthMenu": [
            [5, 10, 25, 50, -1],
            [5, 10, 25, 50, "Tất cả"]
        ],
        "DisplayLength": 5,
        "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>",
        "sPaginationType": "bootstrap",
        "oLanguage": {
            "sLengthMenu": "Hiện _MENU_ bài viết ở một trang",
            "oPaginate": {
                "sFirst": "Đầu",
                "sPrevious": "Trước",
                "sNext": "Tiếp",
                "sLast": "Cuối"
            },
            "sSearch": "Tìm kiếm",
            "sInfo": "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
            "sProcessing": "Đang xử lý...",
            "sZeroRecords": "Không tìm thấy mục nào phù hợp",
            "sInfoFiltered": "(được lọc từ _MAX_ mục)",
            "sInfoEmpty": "Đang xem 0 đến 0 trong tổng số 0 mục",
            "sEmptyTable": "Không có dữ liệu phù hợp",
            "sInfoPostFix": "",
            "sUrl": ""
        },
        "aoColumnDefs": [{
            'bSortable': false,
            'aTargets': [8,9]
        }
        ]
    });

    jQuery('#editable-manageInfracNormalPosts_wrapper .dataTables_filter input').addClass("form-control medium"); // modify table search input
    jQuery('#editable-manageInfracNormalPosts_wrapper .dataTables_length select').addClass("form-control xsmall"); // modify table per page dropdown

    $('.selectpicker.normalPostFilter').change(function () {
        tableInfracNormailPost.draw();
    });
}
function tableTag() {
    jQuery(document).ready(function () {
        EditableTable.init();
    });
}

/*
    Get duplicate tags
*/
function GetDuplicateTags(item) {
    var name = $(item).parents("tr").find(".selectedDuplicateTagName").text();
    var list = $("#duplicateView");
        $.ajax({
        method: "POST",
        url: "/Admin/GetDupicateTags",
        data: { tagName: name }
        })
      .done(function (msg) {
          if (msg != "\n") {
              list.html(msg);
          }
      })
      .fail(function (msg) {
          alert(msg);
      });
}
function checkall() {
    $('#all').change(function () {
        var checkboxes = $(this).closest('#editable-sample1').find(':checkbox');
        if ($(this).is(':checked')) {
            checkboxes.prop('checked', true);
        } else {
            checkboxes.prop('checked', false);
        }
    });
    $('#all-dup').change(function () {
        var checkboxes = $(this).closest('#editable-sample').find(':checkbox');
        if ($(this).is(':checked')) {
            checkboxes.prop('checked', true);
        } else {
            checkboxes.prop('checked', false);
        }
    });
}
function checkAllFeedback(item) {
    var checkboxes = $('#feedbackTable').children().find(':checkbox');
    if ($(item).is(':checked')) {
        checkboxes.prop('checked', true);
    } else {
        checkboxes.prop('checked', false);
    }
}
function uncheckStatus(id) {
    var url = "/Admin/CheckStatus";
    var data = { id: id };
    var checked = "#checked-" + id;
    var check = "#check-" + id;

    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
	  .done(function (msg) {
	      if (msg == "True") {
	          $(check).each(function () { $(this).removeClass("hidden"); });
	          $(checked).each(function () { $(this).addClass("hidden"); });
	      } else {
	          alert("false");
	      }
	  })
	  .fail(function () {
	      alert("uncheckStatus error");
    });
}

function checkStatus(id) {
    var url = "/Admin/CheckStatus";
    var data = { id: id };
    var checked = "#checked-" + id;
    var check = "#check-" + id;

    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
	  .done(function (msg) {
	      if (msg == "True") {
	          $(check).each(function () { $(this).addClass("hidden"); });
	          $(checked).each(function () { $(this).removeClass("hidden"); });
	      } else {
	          alert("false");
	      }
	  })
	  .fail(function () {
	      alert("checkStatus error");
	  });
}

//change status report InfracMainPost
function changeStatusReportInfracMainPost(id, type) {
    var url = "/Admin/ChangeStatusReport";
    var data = { id: id, type: type };
    var statusId = $("#status-" + id);
    var status = statusId.text().trim();
    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
    .done(function (msg) {
        if (msg) {
            if (status.trim() == "True") {
                tableInfracMainPost.cell(statusId).data("False").draw();
            }
            else {
                tableInfracMainPost.cell(statusId).data("True").draw();
            }
            
        }
        else {
            alert("false");
        }
    })
      .fail(function () {
          alert("Thất bại!");
      });
} 


//change status report InfracNormalPost
function changeStatusReportInfracNormalPost(id, type) {
    var url = "/Admin/ChangeStatusReport";
    var data = { id: id, type: type };
    var statusId = $("#status-" + id);
    var status = statusId.text().trim();
    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
    .done(function (msg) {
        if (msg) {
            if (status.trim() == "True") {
                tableInfracNormailPost.cell(statusId).data("False").draw();
            }
            else {
                tableInfracNormailPost.cell(statusId).data("True").draw();
            }

        }
        else {
            alert("false");
        }
    })
      .fail(function () {
          alert("Thất bại!");
      });
}

//change status report InfracUser
function changeStatusReportUser(id, type) {
    var url = "/Admin/ChangeStatusReport";
    var data = { id: id, type: type };
    var statusId = $("#status-" + id);
    var status = statusId.text().trim();
    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
    .done(function (msg) {
        if (msg) {
            if (status.trim() == "True") {
                tableInfracNormailPost.cell(statusId).data("False").draw();
            }
            else {
                tableInfracNormailPost.cell(statusId).data("True").draw();
            }

        }
        else {
            alert("false");
        }
    })
      .fail(function () {
          alert("Thất bại!");
      });
}

//block post
function blockPost(item, id) {
    var url = "/Admin/BlockPost";
    var data = { id: id };
    if (confirm("Bạn có chắc chắn muốn khóa bài viết này ?") == false) {
        return;
    }
    $.ajax({
        method: "POST",
        url: url,
        data: data,
        success: function (msg) {
            if (msg == "True") {
                $(item).addClass("hidden");
                $(item).siblings(".hidden").removeClass("hidden");
            }
        }


    });
}

//active post
function activePost(item, id) {
    var url = "/Admin/ActivePost";
    var data = { id: id };
    if (confirm("Bạn có chắc chắn muốn mở khóa bài viết này ?") == false) {
        return;
    }
    $.ajax({
        method: "POST",
        url: url,
        data: data,
        success: function (msg) {
            if (msg == "True") {
                $(item).addClass("hidden");
                $(item).siblings(".hidden").removeClass("hidden");
            }
        }


    });
}
var timeoutMainpostFilter;
function GetOptionSelect() {
    clearTimeout(timeoutMainpostFilter);
    var load = function () {
        $("#select-form").submit();
    }   
    timeoutMainpostFilter = setTimeout(load, 1000);
}
function GetOptionSelectNormalPost() {
    clearTimeout(timeoutMainpostFilter);
    var load = function () {
        $("#select-form-normalpost").submit();
    }
    timeoutMainpostFilter = setTimeout(load, 1000);
}
var timeoutUserFilter;
function GetUserOptionSelect() {
    clearTimeout(timeoutUserFilter);
    var load = function () {
        $("#select-form-user").submit();
    }
    timeoutUserFilter = setTimeout(load, 1000);
}

function dataTableManageInfracUsers() {
    $.fn.dataTable.ext.search.push(
        function (settings, data, dataIndex) {
            var user = data[0] || "";
            var val = $('.selectpicker.userFilter').val();

            if (val == null) {
                return true;
            }
            else if (val.indexOf(user.trim()) != -1) {
                return true;
            }
            else {
                return false;
            }
        }
    );
    tableInfracUsers = $('#editable-manageInfracUsers').DataTable({
        "lengthMenu": [
            [5, 10, 25, 50, -1],
            [5, 10, 25, 50, "Tất cả"]
        ],
        "DisplayLength": 5,
        "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>",
        "sPaginationType": "bootstrap",
        "oLanguage": {
            "sLengthMenu": "Hiện _MENU_ người vi phạm ở một trang",
            "oPaginate": {
                "sFirst": "Đầu",
                "sPrevious": "Trước",
                "sNext": "Tiếp",
                "sLast": "Cuối"
            },
            "sSearch": "Tìm kiếm",
            "sInfo": "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
            "sProcessing": "Đang xử lý...",
            "sZeroRecords": "Không tìm thấy mục nào phù hợp",
            "sInfoFiltered": "(được lọc từ _MAX_ mục)",
            "sInfoEmpty": "Đang xem 0 đến 0 trong tổng số 0 mục",
            "sEmptyTable": "Không có dữ liệu phù hợp",
            "sInfoPostFix": "",
            "sUrl": ""
        },
        "aoColumnDefs": [{
            'bSortable': false,
            'aTargets': [6]
        }
        ]
    });

    jQuery('#editable-manageInfracUsers_wrapper .dataTables_filter input').addClass("form-control medium"); // modify table search input
    jQuery('#editable-manageInfracUsers_wrapper .dataTables_length select').addClass("form-control xsmall"); // modify table per page dropdown

    $('.selectpicker.userFilter').change(function () {
        tableInfracUsers.draw();
    });
}

function tableRecevierMail() {
    $.fn.dataTable.ext.search.push(
        function (settings, data, dataIndex) {
            var role = data[1] || "";
            var val = $('.selectpicker.roleFilter').val();

            if (val == null) {
                return true;
            }
            else if (val.indexOf(role.trim()) != -1) {
                return true;
            }
            else {
                return false;
            }
        }
    );

    var table = $('#editable-receiver').DataTable({
        "lengthMenu": [
            [5, 10, 25, 50, -1],
            [5, 10, 25, 50, "Tất cả"]
        ],
        "DisplayLength": 5,
        "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>",
        "sPaginationType": "bootstrap",
        "oLanguage": {
            "sLengthMenu": "Hiện _MENU_ người dùng ở một trang",
            "oPaginate": {
                "sFirst": "Đầu",
                "sPrevious": "Trước",
                "sNext": "Tiếp",
                "sLast": "Cuối"
            },
            "sSearch": "Tìm kiếm",
            "sInfo": "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
            "sProcessing": "Đang xử lý...",
            "sZeroRecords": "Không tìm thấy mục nào phù hợp",
            "sInfoFiltered": "(được lọc từ _MAX_ mục)",
            "sInfoEmpty": "Đang xem 0 đến 0 trong tổng số 0 mục",
            "sEmptyTable": "Không có dữ liệu phù hợp",
            "sInfoPostFix": "",
            "sUrl": ""
        }
        ,
        "aoColumnDefs": [{
            'bSortable': false,
            'aTargets': [0]
        }]
    });

    $('#editable-receiver_wrapper .dataTables_filter input').addClass("form-control medium"); // modify table search input
    $('#editable-receiver_wrapper .dataTables_length select').addClass("form-control xsmall"); // modify table per page dropdown
    

    $('.selectpicker.roleFilter').change(function () {
        table.draw();
    });
}

function receiverCheckAll() {
    $('#all').change(function () {
        var checkboxes = $(this).closest('#editable-receiver').find(':checkbox');
        if ($(this).is(':checked')) {
            checkboxes.prop('checked', true);
        } else {
            checkboxes.prop('checked', false);
        }
    });
}

function receiverEditor() {
    var list = [];
    $(".editor").each(function () {
        list.push($(this).attr("id"));
    });
    for (var item in list) {
        CKEDITOR.replace(list[item], {
            toolbar: [
               { name: 'document', items: ['NewPage', 'DocProps', 'Preview', 'Print', '-', 'Templates'] },
               { name: 'clipboard', items: ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo'] },
               { name: 'editing', items: ['Find', 'Replace', '-', 'SelectAll', '-', 'SpellChecker', 'Scayt'] },
               {
                   name: 'forms', items: ['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton',
                       'HiddenField']
               },
               '/',
               { name: 'basicstyles', items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat'] },
               {
                   name: 'paragraph', items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv',
                   '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl', 'Language']
               },
               { name: 'links', items: ['Link', 'Unlink', 'Anchor'] },
               { name: 'insert', items: ['Chart', 'Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak', 'Iframe', 'Youtube', 'EqnEditor'] },
               '/',
               { name: 'styles', items: ['Styles', 'Format', 'Font', 'FontSize'] },
               { name: 'colors', items: ['TextColor', 'BGColor'] },
               { name: 'tools', items: ['Maximize', 'ShowBlocks', 'Fieldset', '-', 'About'] }
            ],
        });
    }
}

function selectReceiver() {
    var email = "";
    $(".mh-receiver-user-checkbox:checked").each(function () {
        email += ($(this).val()) + ", ";
    });
    email = email.slice(0, -2);
    reciever = $(".mh-admin-receiver-input").val(email.trim());
}

$(document).ready(function () {
    switch ($("#mh-page").val()) {
        case "ManageUsers":
            selectPicker();
            selectValue();
            selectValuePlus();
            tableManageUsers();
            $('body').on('hidden.bs.modal', '.modal', function () {
                var id = $(this).attr("mh-id");
                clearBlockUser(id);
            });
            break;
        case "ManageRules":
            tableRule();
            spinDurationBanReason();
            break;
        case "ManageInfracPosts":
            selectPicker();
            ManageInfracMainPosts_edittable();
            ManageInfracNormalPosts_edittable();
            //uncheckStatus(id);
            //checkStatus(id);
            break;
        case "ManageTags":
            tableTag();
            checkall();
            $('body').on('hidden.bs.modal', '.modal', function () {
                var checkboxes = $('#editable-sample').find(':checkbox');
                checkboxes.prop('checked', false);
                $("#btnResultDuplicate").addClass("hidden");
            });
            break;
        case "ManageInfracUsers":
            selectPicker();
            selectValuePlus();
            dataTableManageInfracUsers();
            $('body').on('hidden.bs.modal', '.modal', function () {
                var id = $(this).attr("mh-id");
                clearBlockUser(id);
            });
            break;
        case "SendEMail":
            selectPicker();
            tableRecevierMail();
            receiverCheckAll();
            receiverEditor();
        default:
            break;
    }
});