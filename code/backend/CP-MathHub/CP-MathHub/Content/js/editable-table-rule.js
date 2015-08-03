var EditableTable = function () {

    return {

        //main function to initiate the module
        init: function () {
            function restoreRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);

                for (var i = 0, iLen = jqTds.length; i < iLen; i++) {
                    oTable.fnUpdate(aData[i], nRow, i, false);
                }

                oTable.fnDraw();
            }

            function editRow(oTable, nRow, id) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);
                //jqTds[0].innerHTML = '<input type="text" class="form-control small" id="txtId" value="' + aData[0] + '">';
                jqTds[1].innerHTML = '<input type="text" style="width: 100%;" class="form-control small" id="txtName" value="' + aData[1] + '">';
                jqTds[2].innerHTML = '<input type="text" style="width: 100%;" class="form-control small" id="txtDes" value="' + aData[2] + '">';
                //jqTds[3].innerHTML = '<input type="text" class="form-control small" value="' + aData[3] + '">';
                jqTds[3].innerHTML =
                                       '<div id="spinner5">'
                                        + '<div class="input-group" style="width:150px;">'
                                            + '<div class="spinner-buttons input-group-btn">'
                                                + '<button type="button" class="btn spinner-down btn-danger">'
                                                    + '<i class="icon-minus"></i>'
                                                + '</button>'
                                            + '</div>'
                                            + '<input id="txtDuration" type="text" class="spinner-input form-control small" maxlength="3" value="' + $(aData[3]).find("span").html() + '">'
                                            + '<div class="spinner-buttons input-group-btn">'
                                                + '<button type="button" class="btn spinner-up btn-warning">'
                                                    + '<i class="icon-plus"></i>'
                                                + '</button>'
                                            + '</div>'
                                        + '</div>'
                                   + '</div>';
                jqTds[4].innerHTML = '<a class="edit btn btn-primary" href="" mh-id="' + id + '">Lưu</a> <a class="cancel btn btn-danger" href="">Hủy</a>';
                //jqTds[5].innerHTML = '<a class="cancel btn btn-danger" href="">Hủy</a>';
                $('#spinner5').spinner({ value: 0, step: 1, min: 0, max: 365 });
            }

            function saveRow(oTable, nRow, id) {
                var jqInputs = $('input', nRow);
                //oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                oTable.fnUpdate(jqInputs[0].value, nRow, 1, false);
                oTable.fnUpdate(jqInputs[1].value, nRow, 2, false);
                oTable.fnUpdate('<div><span>' + jqInputs[2].value + '</span> ngày</div>', nRow, 3, false);
                oTable.fnUpdate('<a class="edit btn btn-primary" href="" mh-id="' + id + '">Chỉnh sửa</a>', nRow, 4, false);
                //oTable.fnUpdate('<a class="delete btn btn-danger" href="">Xóa</a>', nRow, 5, false);
                oTable.fnDraw();
            }

            function cancelEditRow(oTable, nRow, id) {
                var jqInputs = $('input', nRow);
                //oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                oTable.fnUpdate(jqInputs[0].value, nRow, 1, false);
                oTable.fnUpdate(jqInputs[1].value, nRow, 2, false);
                oTable.fnUpdate('<div><span>' + jqInputs[2].value + '</span> ngày</div>', nRow, 3, false);
                oTable.fnUpdate('<a class="edit btn btn-primary" href="" mh-id="' + id + '">Chỉnh sửa</a>', nRow, 4, false);
                oTable.fnDraw();
            }

            var oTable = $('#editable-sample').dataTable({
                "alengthMenu": [
                    [5, 10, 25, 50, -1],
                    [5, 10, 25, 50, "Tất cả"]
                ],
                "iDisplayLength": 5,
                "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>",
                "sPaginationType": "bootstrap",
                "oLanguage": {
                    "sLengthMenu": "Hiện _MENU_ chức vụ ở một trang",
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
                    "sEmptyTable": "Không có dữ liệu phù hợp ở bảng",
                    "sInfoPostFix": "",
                    "sUrl": ""
                },
                "aoColumnDefs": [{
                    'bSortable': false,
                    'aTargets': [4]
                }
                ]
            });
            jQuery('#editable-sample_wrapper .dataTables_filter input').addClass("form-control medium"); // modify table search input
            jQuery('#editable-sample_wrapper .dataTables_length select').addClass("form-control xsmall"); // modify table per page dropdown

            var nEditing = null;

            //$('#editable-sample_new').click(function (e) {
            //    e.preventDefault();
            //    var aiNew = oTable.fnAddData(['', '', '', '',
            //            '<a class="edit  btn btn-primary" href="">Edit</a>', '<a class="cancel" data-mode="new" href="">Cancel</a>'
            //    ]);
            //    var nRow = oTable.fnGetNodes(aiNew[0]);
            //    editRow(oTable, nRow);
            //    nEditing = nRow;
            //});

            //$('#editable-sample').on('click', 'a.delete', function (e) {
            //    e.preventDefault();
               
            //    var id = $(this).attr("mh-id");
            //    //var Id = encodeURIComponent(document.getElementById("txtId").value);
            //    if (confirm("Are you sure to delete this row ?") == false) {
            //        return;
            //    }
            //    $.ajax({
            //        type: 'POST',
            //        url: '/Admin/DeleteRule',
            //        data: { Id: id },
            //        //contentType: 'application/json; charset=utf-8',

            //        success: function () {
            //            var nRow = $(this).parents('tr')[0];
            //            oTable.fnDeleteRow(nRow);
            //        }
            //    });
            //    //var nRow = $(this).parents('tr')[0];
            //    //oTable.fnDeleteRow(nRow);
            //    //alert("Deleted! Do not forget to do some ajax to sync with backend :)");
            //});

            $('#editable-sample').on('click', 'a.cancel', function (e) {
                e.preventDefault();
                if ($(this).attr("data-mode") == "new") {
                    var nRow = $(this).parents('tr')[0];
                    oTable.fnDeleteRow(nRow);
                } else {
                    restoreRow(oTable, nEditing);
                    nEditing = null;
                }
            });

            $('#editable-sample').on('click', 'a.edit', function (e) {
                e.preventDefault();
                var id = $(this).attr("mh-id");
                /* Get the row as a parent of the link that was clicked on */
                var nRow = $(this).parents('tr')[0];

                if (nEditing !== null && nEditing != nRow) {
                    /* Currently editing - but not this row - restore the old before continuing to edit mode */
                    restoreRow(oTable, nEditing);
                    editRow(oTable, nRow, id);
                    nEditing = nRow;
                } else if (nEditing == nRow && this.innerHTML == "Lưu") {
                    /* Editing this row and want to save it */
                    
                    //var Id = document.getElementById("txtId").value;
                    var Name = document.getElementById("txtName").value;
                    var Des = document.getElementById("txtDes").value;
                    var Dur = document.getElementById("txtDuration").value;
                    //var requestUrl = "/Admin/EditRule/"+Id;
                    $.ajax({
                        type: 'POST',
                        url: '/Admin/EditRule',
                        data: { Id: id, Name: Name, Description: Des, Duration: Dur },
                        //contentType: 'application/json; charset=utf-8',

                        success: function (msg) {
                            // Notice that msg.d is used to retrieve the result object
                            if (msg) {
                                saveRow(oTable, nEditing, id);
                                nEditing = null;
                            }
                            
                        }
                    });


                    //alert("Updated! Do not forget to do some ajax to sync with backend :)");
                } else {
                    /* No edit in progress - let's start one */
                    editRow(oTable, nRow, id);
                    nEditing = nRow;
                }
            });
        }

    };

}();