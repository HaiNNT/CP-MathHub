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
        $(this).parents(".mh-profile-info-row").find(".mh-profile-span-edit").toggle();
        $(".mh-profile-edit-button").toggle();
        // save, cancel, input hiện
        switch ($(this).attr("mh-type")) {
            case "text":
                $(this).parents(".mh-profile-info-row").find(".mh-profile-input-edit").toggle();
                break;
            case "radio":
                //radio button: hiện
                $(this).parents(".mh-profile-info-row").find(".radio-inline").toggle();
                break;
            case "datetime":
                var input = $(this).parents(".mh-profile-info-row").find(".mh-profile-input-edit");
                var strDate = input.val();
                var date = new Date(strDate.split("-")[2], strDate.split("-")[1] - 1, strDate.split("-")[0]);
                $("#datepicker").datepicker({ dateFormat: "dd-mm-yy" }).datepicker("setDate", date);
                input.toggle();
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
            default:
                break;
        }

        // mh-profile-span-edit: hiện
        $(this).parents(".mh-profile-info-row").find(".mh-profile-span-edit").toggle();
        //Nút save: ẩn
        $(this).siblings().toggle();
        //thẻ a: hiện
        $(".mh-profile-edit-button").show();
        //radio button: ẩn
        $(this).parents(".mh-profile-info-row").find(".radio-inline").toggle();

    });
});