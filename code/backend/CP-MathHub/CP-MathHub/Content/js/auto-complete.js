/**
 * Author: HaiNNT
 * Created Date: 2015-06-21
 * Description: This script file store 'auto complete' script for search, add tag, invite friend.
 */


/*
  Auto complete tag
*/
var ids = [];

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
              list.append(filterAddedTag(msg));
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
                + "<i class='fa fa-times-circle' onclick='removeTag(this)'></i>"
                + hidden
                + "</span>";
    var list = $("#mh-tag-list");
    autocomplete.hide();
    if (!ids[tagId]){
        ids[tagId] = tagName;
        list.append($(item));
    }
}

function removeTag(item) {
    var parent = $(item).parent().remove();
}

function filterAddedTag(msg) {
    var list = $(msg);
    var result = $(msg).clone();
    for (var i = 0; i < list.length; i++) {
        if (ids[$(list[i]).find("span").text()]) {
            $(result[i]).remove();
        }       
    }
    return result;
}

$(document).ready(function () {
    autocompleteTag();
});