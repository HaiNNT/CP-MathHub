/**
 * Author: HaiNNT
 * Created Date: 2015-06-21
 * Description: This script file store 'auto complete' script for search, add tag, invite friend.
 */


/*
  Auto complete tag
*/
var tagIds = [];

function autocompleteTag() {
    var timeout;
    var list = $("#mh-tag-autocomplete-list");
    var load = function () {
        clearTimeout(timeout);
        var param = $("#mh-input-tag").val();
        $.ajax({
            method: "GET",
            url: "/Question/SearchTag",
            data: { name: param, type: "autocomplete" }
        })
      .done(function (msg) {
          if (msg != "\n") {
              var array = filterAddedTag(msg);
              for (var i = 0; i < array.length; i++) {
                  list.append(array[i]);
              }
              if (list.html() != "")
                  list.show();
          }
      })
      .fail(function (msg) {
          alert(msg);
      });
    }
    $("#mh-input-tag").keypress(function () {
        list.hide();
        list.html("");
        timeout = setTimeout(load, 1000);
    });
    $("body").click(function () {
        list.hide();
        list.html("");
    });
}

function addTag(item) {
    var autocomplete = $("#mh-tag-autocomplete-list");
    var tagName = $(item).find("label").text();
    var tagId = $(item).find("span").text();
    var hidden = "<input type='hidden' name='TagIds' value='" + tagId + "' />"
    var item = "<span class='mh-tag-item'>"
                + "<span>"
                + tagName
                + "</span>"
                + "<i class='fa fa-times-circle' onclick='removeTag(this,"+tagId+")'></i>"
                + hidden
                + "</span>";
    var list = $("#mh-tag-list");
    $("#mh-input-tag").val("");
    $("#mh-input-tag").focus();
    autocomplete.hide();
    if (!tagIds[tagId]) {
        tagIds[tagId] = tagName;
        list.append($(item));
    }
}

function removeTag(item, tagId) {
    var parent = $(item).parent().remove();
    tagIds[tagId] = undefined;
}

function filterAddedTag(msg) {
    var list = $(msg);
    var result = $("");
    for (var i = 0; i < list.length; i++) {
        if (!tagIds[$(list[i]).find("span").text()]) {
            result.push($(list[i]).clone());
        }
    }
    return result;
}

/*
  Auto complete invite
*/
var inviteIds = [];

function filterAddedInvite(msg) {
    var list = $(msg);
    var result = $("");
    for (var i = 0; i < list.length; i++) {
        if (!inviteIds[$(list[i]).find("span").text()]) {
            result.push($(list[i]).clone());
        }
    }
    return result;
}

function addInvite(item) {
    var autocomplete = $("#mh-invite-autocomplete-list");
    var inviteName = $(item).find("label").text();
    var inviteId = $(item).find("span").text();
    var hidden = "<input type='hidden' name='InviteIds' value='" + inviteId + "' />"
    var item = "<span class='mh-invite-item'>"
                + "<span>"
                + inviteName
                + "</span>"
                + "<i class='fa fa-times-circle' onclick='removeInvite(this," + inviteId + ")'></i>"
                + hidden
                + "</span>";
    var list = $("#mh-invite-list");
    $("#mh-input-invite").val("");
    $("#mh-input-invite").focus();
    autocomplete.hide();
    if (!inviteIds[inviteId]) {
        inviteIds[inviteId] = inviteName;
        list.append($(item));
    }
}

function removeInvite(item, inviteId) {
    var parent = $(item).parent().remove();
    inviteIds[inviteId] = undefined;
}

function autocompleteInvite() {
    var timeout;
    var list = $("#mh-invite-autocomplete-list");
    var load = function () {
        clearTimeout(timeout);
        var param = $("#mh-input-invite").val();
        $.ajax({
            method: "POST",
            url: "/Question/InviteFriend",
            data: { name: param }
        })
      .done(function (msg) {
          if (msg != "\n") {
              var array = filterAddedInvite(msg);
              for (var i = 0; i < array.length; i++) {
                  list.append(array[i]);
              }
              if (list.html() != "")
                  list.show();
          }
      })
      .fail(function (msg) {
          alert(msg);
      });
    }
    $("#mh-input-invite").keypress(function () {
        list.hide();
        list.html("");
        timeout = setTimeout(load, 1000);
    });
    $("body").click(function () {
        list.hide();
        list.html("");
    });
}

$(document).ready(function () {
    autocompleteTag();
    autocompleteInvite();
});