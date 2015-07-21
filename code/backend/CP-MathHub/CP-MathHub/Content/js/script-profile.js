/**
 * Author: HaiNNT
 * Created Date: 2015-07-12
 * Description: This script file store script for Profile system.
 */

$(document).ready(function () {
    $(".mh-profile-edit-button").click(function () {
        // thẻ a (chỉnh sửa)
        event.preventDefault();
        // mh-profile-span-edit, thẻ a (chỉnh sửa): ẩn
        $(this).parents(".mh-profile-info-row").find(".mh-profile-span-edit").hide();
        $(".mh-profile-edit-button").hide();
        // save, cancel, input hiện
        switch ($(this).attr("mh-type")) {
            case "text":
                $(this).parents(".mh-profile-info-row").find(".mh-profile-input-edit").show();
                break;
            case "radio":
                //radio button: hiện
                $(this).parents(".mh-profile-info-row").find(".radio-inline").show();
                break;
            case "datetime":
                var input = $(this).parents(".mh-profile-info-row").find(".mh-profile-input-edit");
                var strDate = input.val();
                //var date = new Date(strDate.split("-")[2], strDate.split("-")[1] - 1, strDate.split("-")[0]);
                $("#datepicker").datepicker({ dateFormat: "dd-mm-yy" }).datepicker("setDate", strDate);
                input.show();
                break;
            case "select":
                $(this).parents(".mh-profile-info-row").find(".mh-profile-select-edit").show();
                break;
            default:
                break;
        }
        $(this).siblings().toggle();
    });
    $(".mh-profile-cancel").click(function () {
        //nút cancel: ẩn 
        $(this).toggle();
        switch ($(this).attr("mh-type")) {
            case "text":
                // Khung input: quay về giá trị ban đầu + ẩn
                var input = $($(this).parents(".mh-profile-info-row").find(".mh-profile-input-edit"));
                input.toggle();
                input.val($(this).val());
                break;
            case "radio":
                var radios = $(this).parents(".mh-profile-info-row").find(".mh-radio");
                var val = $(this).val();
                radios.each(function () {
                    radio = this;
                    if ($(radio).val() == val) {
                        $(radio).prop("checked", true);
                    } else {
                        $(radio).removeAttr("checked");
                    }
                });
                break;
            case "datetime":
                var input = $($(this).parents(".mh-profile-info-row").find(".mh-profile-input-edit"));
                input.toggle();
                input.val($(this).val());
                break;
            case "select":
                var input = $($(this).parents(".mh-profile-info-row").find(".mh-profile-select-edit"));
                input.toggle();
                input.val($(this).val());
                break;
            default:
                break;
        }
        $(".mh-pass-edit-button").click(function () {
            //an
            $(this).parents(".mh-profile-info-row").find(".mh-profile-span").hide();
            $(this).parents(".mh-body-profile").find(".mh-pass-edit-button").hide();
            $(this).parents(".mh-body-profile").find(".mh-profile-edit-button").hide();
            //hien
            $(this).parents(".mh-body-profile").find(".mh-pass-change").show();
        });
        $(".mh-pass-cancel").click(function () {
            //hien
            $(this).parents(".mh-profile-info-row").find(".mh-profile-span").show();
            $(this).parents(".mh-body-profile").find(".mh-pass-edit-button").show();
            $(this).parents(".mh-body-profile").find(".mh-profile-edit-button").show();
            //an
            $(this).parents(".mh-body-profile").find(".mh-pass-change").hide();
        });

        // mh-profile-span-edit: hiện
        $(this).parents(".mh-profile-info-row").find(".mh-profile-span-edit").toggle();
        $(this).parents(".mh-body-profile").find(".mh-pass-edit-button").show();
        //Nút save: ẩn
        $(this).siblings().toggle();
        //thẻ a: hiện
        $(".mh-profile-edit-button").show();
        //radio button: ẩn
        $(this).parents(".mh-profile-info-row").find(".radio-inline").toggle();

    });
});