/**
 * Author: HaiNNT
 * Created Date: 2015-06-18
 * Description: This script file store script for Question system.
 */

/*
  Init see more question event listening 
*/
function seeMore() {
    $(".mh-seemore").each(function () {
        $(this).click(function () {
            $(this).parent().addClass("hidden");
            var parent = $($(this).parents(".mh-question-preview")[0]);
            parent.find(".mh-sort-content").addClass("hidden");
            parent.find(".mh-full-content").removeClass("hidden");
            parent.find(".mh-social-report").removeClass("hidden");
        });
    });
}

/*
  Init see more comment event listening 
*/
function seeMoreComment() {
    $(".mh-seemore-comment").each(function () {
        $(this).click(function () {
            $(this).addClass("hidden");
            $(this).siblings(".hidden").each(function () {
                $(this).removeClass("hidden");
            });

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
function initCkeditor(preview) {
    var list = [];
    $(".editor").each(function () {
        list.push($(this).attr("id"));
    });
    for (var item in list) {
        CKEDITOR.replace(list[item]);
        if (preview) {
            CKEDITOR.instances[list[item]].on('change', function () {
                var content = CKEDITOR.instances[list[item]].getData();
                $(".mh-preview-content").html("");
                $(".mh-preview-content").append($(content));
            });
        }
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
        data: { name: name }
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
    var add = function (item) {
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
        if (!ids[tagId]) {
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
            data: { name: param, type: "search", tab: tab }
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
    Comment for a post
*/
function commentPost() {
    $(".mh-form-input-comment").each(function () {
        var input = $(this);       
        var list = $(input.parent().siblings(".mh-comment-list")[2]);
        input.keypress(function (e) {
            if (e.keyCode === 13) {
                var content = input.val();
                var postId = input.siblings(".mh-post-id").val();
                console.log(content);
                console.log(postId);
                $.ajax({
                    method: "Post",
                    url: "/Question/PostComment",
                    data: { postId: postId, content: content }
                })
                .done(function (msg) {
                    if (msg != "\n") {
                        list.append($(msg));
                        input.val("");
                    }
                })
                .fail(function (msg) {
                    console.log(msg);
                    alert(msg);
                });
            }
        });
    });
}

/*
    Apply Infinity loading
*/
function applyInfinityLoading() {
    il_ready = true;
}

/*
    Vote
*/
function vote(vote, postId, type) {
    $.ajax({
        dataType: "json",
        method: "POST",
        url: "/Question/Vote",
        data: { postId: postId, type: type }
    })
      .done(function (msg) {
          if (msg.result != "") {
              $(vote).addClass("mh-voted");
              var num = parseInt($(vote).parents(".mh-vote").find(".mh-vote-num").html());
              if (msg.result == "up") {
                  $(vote).parents(".mh-vote").find(".mh-vote-num").html(num + 1);
              } else {
                  $(vote).parents(".mh-vote").find(".mh-vote-num").html(num - 1);
              }
          } else {
              alert("Bạn không thể bình chọn nhiều hơn 1 lần");
          }
      })
      .fail(function () {
          alert("fail error");
      });

}

/*
    Init all necessary fucntions
*/
$(document).ready(function () {
    switch ($("#mh-page").val()) {
        case "question-home":
            applyInfinityLoading();
            seeMore();
            break;
        case "question-create":
            togglePreview();
            initCkeditor(true);
            break;
        case "question-tags":
            applyInfinityLoading();
            searchTag();
            break;
        case "question-users":
            applyInfinityLoading();
            searchUser();
            break;
        case "question-detail":
            initCkeditor(false);
            commentPost();
            seeMoreComment();
            break;
        default:
            applyInfinityLoading();
            seeMore();
            break;
    }
});