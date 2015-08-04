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
    $(".mh-pass-edit-button").click(function () {
        //an
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
    $('.image-editor').cropit();
    $('#avatar-form').submit(function () {
        // Move cropped image data to hidden input
        var imageData = $('.image-editor').cropit('export');
        $('.hidden-image-data').val(imageData);
    });
    searchUser();
    searchFriend();
    searchUserFriend();
    applyInfinityLoading();
});
/*
    Search users
*/
var timeoutSearchUser;
function searchUser() {
    var list = $("#mh-list-user");
    var load = function () {
        var param = $("#mh-search-user").val();
        var tab = $("#tab").val();
        $("#tab-param").val(param);
        $("#system").val("searchuser");
        $.ajax({
            method: "GET",
            url: "/Account/SearchUser",
            data: { name: param, tab: tab }
        })
      .done(function (msg) {
          if (msg != "\n") {
              list.html($(msg));
          }
      })
      .fail(function (msg) {
          alert(msg);
      });
    }
    $("#mh-search-user").keypress(function () {
        list.html("");
        clearTimeout(timeoutSearchUser);
        timeoutSearchUser = setTimeout(load, 1000);
    });
}
/*
Search Friends
*/
function searchFriend() {
    var timeout;
    var list = $("#mh-list-friend");
    var id = $("#user-id").val();
    var load = function () {
        clearTimeout(timeout);
        var param = $("#mh-search-friend").val();
        $.ajax({
            method: "GET",
            url: "/Account/SearchFriend",
            data: { searchString: param, friendId: id }
        })
      .done(function (msg) {
          if (msg != "\n") {
              list.html($(msg));
          }
      })
      .fail(function (msg) {
          alert(msg);
      });
    }
    $("#mh-search-friend").keypress(function () {
        list.html("");
        timeout = setTimeout(load, 1000);
});
}
/*
Search UserFriends
*/
function searchUserFriend() {
    var timeout;
    var list = $("#mh-list-userfriend");
    var id = $("#friend-id").val();
    var load = function () {
        clearTimeout(timeout);
        var param = $("#mh-search-userfriend").val();
        $.ajax({
            method: "GET",
            url: "/Account/SearchUserFriend",
            data: { searchString: param, friendId: id }
        })
      .done(function (msg) {
          if (msg != "\n") {
              list.html($(msg));
          }
      })
      .fail(function (msg) {
          alert(msg);
      });
    }
    $("#mh-search-userfriend").keypress(function () {
        list.html("");
        timeout = setTimeout(load, 1000);
    });
}

function loadConversationDetail(item, id) {
    $(".mh-profile-chat-details").html("");
    $(item).parent().siblings().removeClass("active");
    $(item).parent().addClass("active");
    $.ajax({
        method: "POST",
        url: "/Account/LoadConversationDetail",
        data: { id: id }
    })
	  .done(function (msg) {
	      if (msg || msg != "") {
	          $(".mh-profile-chat-details").html($(msg).html());
	          checkOnline(id);
	          $('.mh-profile-chat-footer-textarea').keypress(function (e) {
	              if (e.keyCode === 13) {
	                  e.preventDefault();
	                  e.stopPropagation();
	                  if ($(this).val().trim() != "") {
	                      chat.server.sendToConversation($(this).val(), $(this).attr("mh-id"));
	                      $(this).val("").focus();
	                  }
	              }
	          });
	      } else {
	          alert("empty conversation");
	      }
	  })
	  .fail(function () {
	      alert("fail error");
	  });
}

/*
    Apply Infinity loading
*/
function applyInfinityLoading() {
    il_ready = true;
}