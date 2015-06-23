/**
 * Author: HaiNNT
 * Created Date: 2015-06-18
 * Description: This script file store common script for all over the system.
 */

/*
  Init see more event listening 
*/
function seeMore() {
    $(".mh-seemore").each(function () {
        $(this).click(function () {
            $(this).addClass("hidden");
            var parent = $($(this).parents(".mh-question-preview")[0]);
            parent.find(".mh-sort-content").addClass("hidden");
            parent.find(".mh-full-content").removeClass("hidden");
        });
    });
}

/*
  Bookmark a main post
*/
function bookmark(id, type) {
    var url = "";
    var data = { id: id };
    var bookmarked = "#bookmarked-" + id;
    var bookmark = "#bookmark-" + id;
    switch (type) {
        case "question":
            url = "/Question/Bookmark";
            break;
        //case "article":

        //    break;
        //case "discussion":

        //    break;
        default:

            break;
    }
    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
      .done(function (msg) {
          if (msg) {
              $(bookmark).addClass("hidden");
              $(bookmarked).removeClass("hidden");
          } else {
              alert("false");
          }
      })
      .fail(function () {          
          alert("fail error");
      });
}

/*
  Unbookmark a main post
*/
function unBookmark(id, type) {
    var url = "";
    var data = { id: id };
    var bookmarked = "#bookmarked-" + id;
    var bookmark = "#bookmark-" + id;
    switch (type) {
        case "question":
            url = "/Question/Bookmark";
            break;
            //case "article":

            //    break;
            //case "discussion":

            //    break;
        default:

            break;
    }
    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
      .done(function (msg) {
          if (msg) {
              $(bookmarked).addClass("hidden");
              $(bookmark).removeClass("hidden");
          } else {
              alert("false");
          }
      })
      .fail(function () {
          alert("fail error");
      });
}

/*
  Show and hide Preview main post content
*/
function togglePreview() {
    $(".mh-preview-button").click(function () {
        $(".mh-preview-content").slideToggle("slow");
    });
}

/*
  Apply ckeditor for textarea and preview
*/
function initCkeditor() {
    var list = [];
    $(".editor").each(function () {
        list.push($(this).attr("id"));
    });
    for (var item in list) {
        CKEDITOR.replace(list[item]);
        CKEDITOR.instances[list[item]].on('change', function () {
            var content = CKEDITOR.instances[list[item]].getData();
            $(".mh-preview-content").html("");
            $(".mh-preview-content").append($(content));
        });
    }   
}

/*
    Create a tag 
*/
function createTag() {
    var name = $("#mh-input-tag").val();
    $.ajax({
        method: "POST",
        url: "/Question/CreateTag",
        data: { name : name }
    })
      .done(function (msg) {
          if (msg) {
              add(msg);
          } else {
              alert("false");
          }
      })
      .fail(function () {
          alert("fail error");
      });
    var add = function(item){
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
            $("#mh-input-tag").val("");
            $("#mh-input-tag").focus();
            autocomplete.hide();
            if (!ids[tagId]){
                ids[tagId] = tagName;
                list.append($(item));
            }        
    }
}

/*
    Search tags
*/
function searchTag() {
    var timeout;
    var list = $("#mh-list-tag");
    var load = function () {
        clearTimeout(timeout);
        var param = $("#mh-search-tag").val();
        var tab = $("#tab").val();
        $.ajax({
            method: "GET",
            url: "/Question/SearchTag",
            data: { name: param, type: "search", tab: tab}
        })
      .done(function (msg) {
          if (msg != "\n") {             
              list.append($(msg));
          }
      })
      .fail(function (msg) {
          alert(msg);
      });
    }
    $("#mh-search-tag").keypress(function () {
        list.html("");
        timeout = setTimeout(load, 1000);
    });
}

/*
    Search users
*/
function searchUser() {
    var timeout;
    var list = $("#mh-list-user");
    var load = function () {
        clearTimeout(timeout);
        var param = $("#mh-search-user").val();
        var tab = $("#tab").val();
        $.ajax({
            method: "GET",
            url: "/Question/SearchUser",
            data: { name: param, tab: tab }
        })
      .done(function (msg) {
          if (msg != "\n") {
              list.append($(msg));
          }
      })
      .fail(function (msg) {
          alert(msg);
      });
    }
    $("#mh-search-user").keypress(function () {
        list.html("");
        timeout = setTimeout(load, 1000);
    });
}

/*
    Init all necessary fucntions
*/
$(document).ready(function () {
    switch ($("#mh-page").val()) {
        case "question-home":
            seeMore();
            break;
        case "question-create":
            togglePreview();
            initCkeditor();
            break;
        case "question-tags":
            searchTag();
            break;
        case "question-users":
            searchUser();
            break;
        default:
            seeMore();
            break;
    }
});