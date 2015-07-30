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
                //jqTds[0].innerHTML = '<input type="text" class="form-control small" value="' + aData[0] + '">';
                jqTds[1].innerHTML = '<input type="text" class="form-control small" id="txtName" value="' + aData[1] + '">';
                //jqTds[2].innerHTML = '<input type="text" class="form-control small" value="' + aData[2] + '">';
                jqTds[3].innerHTML = '<input type="text" class="form-control small" id="txtDes" value="' + aData[3] + '">';
                //jqTds[4].innerHTML = '<input type="text" class="form-control small" value="' + aData[4] + '">';
                jqTds[5].innerHTML = '<a class="edit btn btn-primary" href="" mh-id="' + id + '">Lưu</a> <a class="cancel btn btn-danger" href="">Hủy</a>';
                //jqTds[6].innerHTML = '<a class="cancel btn btn-danger" href="">Hủy</a>';
            }

            function saveRow(oTable, nRow, id) {
                var jqInputs = $('input', nRow);
                //oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                oTable.fnUpdate(jqInputs[0].value, nRow, 1, false);
                //oTable.fnUpdate(jqInputs[1].value, nRow, 2, false);
                oTable.fnUpdate(jqInputs[1].value, nRow, 3, false);
                //oTable.fnUpdate(jqInputs[4].value, nRow, 4, false);
                oTable.fnUpdate('<a class="edit btn btn-primary" href="">Chỉnh sửa</a>', nRow, 5, false);
                oTable.fnUpdate('<a class="delete btn btn-danger" href="">Xóa</a>', nRow, 6, false);
                oTable.fnDraw();
            }

            function cancelEditRow(oTable, nRow, id) {
                var jqInputs = $('input', nRow);
                //oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                oTable.fnUpdate(jqInputs[1].value, nRow, 1, false);
                //oTable.fnUpdate(jqInputs[2].value, nRow, 2, false);
                oTable.fnUpdate(jqInputs[3].value, nRow, 3, false);
                //oTable.fnUpdate(jqInputs[4].value, nRow, 4, false);
                oTable.fnUpdate('<a class="edit btn btn-primary" href="">Chỉnh sửa</a>', nRow, 5, false);
                oTable.fnDraw();
            }

            var oTable = $('#editable-sample').dataTable({
                "aLengthMenu": [
                    [5, 15, 20, -1],
                    [5, 15, 20, "All"] // change per page values here
                ],
                // set the initial value
                "iDisplayLength": 5,
                "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>",
                "sPaginationType": "bootstrap",
                "oLanguage": {
                    "sLengthMenu": "Hiện _MENU_ thẻ ở  một trang",
                    "oPaginate": {
                        "sPrevious": "Trước",
                        "sNext": "Sau"
                    },
                    "sSearch": "Tìm kiếm",
                    "sInfo": "Hiển thị từ _START_ đến _END_ của _TOTAL_ mục."
                },
                "aoColumnDefs": [{
                    'bSortable': false,
                    'aTargets': [4, 5, 6, 7]
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

            $('#editable-sample').on('click', 'a.delete', function (e) {
                e.preventDefault();

                if (confirm("Are you sure to delete this row ?") == false) {
                    return;
                }

                var nRow = $(this).parents('tr')[0];
                oTable.fnDeleteRow(nRow);
                alert("Deleted! Do not forget to do some ajax to sync with backend :)");
            });

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
                    var Name = document.getElementById("txtName").value;
                    var Des = document.getElementById("txtDes").value;
                    $.ajax({
                        type: 'POST',
                        url: '/Admin/EditTag',
                        data: { tagId: id, name: Name, description: Des },
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