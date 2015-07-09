/**
 * Author: MinhND93
 * Created Date: 2015-06-30
 * Description: This script file store script for Discussion system.
 */

/*
    Global Varialble
*/
var commentReady = true;

/*
  Init see more discussion event listening 
*/
function seeMore(item) {

    $(item).parent().addClass("hidden");
    $(item).parent().siblings(".mh-full-content").removeClass("hidden");

}

/*
  Like a main post
*/
function like(id, like) {
    var url = "/Discussion/Like";
    var data = { id: id };
    like = $(like);

    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
	  .done(function (msg) {
	      if (msg) {
	          if (like.html() == "Thích") {
	              like.html("Bỏ thích");
	              var num = parseInt(like.siblings(".mh-comment-like").find(".like").text());
	              like.siblings(".mh-comment-like").find(".like").text(++num);
	          }
	          else {
	              like.html("Thích");
	              var num = parseInt(like.siblings(".mh-comment-like").find(".like").text());
	              like.siblings(".mh-comment-like").find(".like").text(num > 0 ? --num : 0);
	          }
	      } else {
	          alert("false");
	      }
	  })
	  .fail(function () {
	      alert("fail error");
	  });
}
/*
  Comment a post
*/
function commentPost() {
    $(".mh-input-comment").each(function () {
        var input = $(this);
        var list = $(input.parents(".mh-input-commnent-div").siblings(".mh-comment-list-full"));
        input.keypress(function (e) {
            if (e.keyCode === 13 && commentReady) {
                commentReady = false;
                var content = input.val();
                var postId = input.siblings(".post-id").val();
                var type = input.siblings(".type").val();
                console.log(content);
                console.log(postId);
                $.ajax({
                    method: "Post",
                    url: "/Discussion/PostComment",
                    data: { postId: postId, content: content, type: type }
                })
				.done(function (msg) {
				    if (msg != "\n") {
				        list.html("");
				        list.append($(msg));
				        input.val("");
				        commentPost();
				        commentReady = true;
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
        case "discussion":
            url = "/discussion/Bookmark";
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
        case "discussion":
            url = "/discussion/Bookmark";
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
        url: "/discussion/CreateTag",
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
            url: "/discussion/SearchTag",
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
	Apply select menu
*/
function initSelectMenu() {
    $("#mh-mainpost-privacy").selectmenu();
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
            url: "/discussion/SearchUser",
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
    $(".mh-input-comment").each(function () {
        var input = $(this);
        var list = $(input.parents(".mh-input-commnent-div").siblings(".mh-comment-list-full"));
        var commentNum = parseInt(input.parents(".mh-discussion-post").find(".comment").text());
        input.keypress(function (e) {
            if (e.keyCode === 13 && commentReady) {
                commentReady = false;
                var content = input.val();
                var postId = input.siblings(".post-id").val();
                var type = input.siblings(".type").val();
                console.log(content);
                console.log(postId);
                $.ajax({
                    method: "Post",
                    url: "/Discussion/PostComment",
                    data: { postId: postId, content: content, type: type }
                })
				.done(function (msg) {
				    if (msg != "\n") {
				        list.html("");
				        list.append($(msg));
				        input.parents(".mh-discussion-post").find(".comment").text(++commentNum);
				        input.val("");
				        commentPost();
				        commentReady = true;
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
    Init all necessary fucntions
*/
$(document).ready(function () {
    switch ($("#mh-page").val()) {
        case "discussion-home":
            break;
        case "discussion-create":
            togglePreview();
            initSelectMenu();
            initCkeditor(true);
            break;
        case "discussion-edit":
            togglePreview();
            initSelectMenu();
            initCkeditor(true);
            break;
        case "discussion-tags":
            applyInfinityLoading();
            searchTag();
            break;
        case "discussion-users":
            applyInfinityLoading();
            searchUser();
            break;
        case "discussion-detail":
            commentPost();
            break;
        case "discussion-category":
            commentPost();
            applyInfinityLoading();
            break;
        default:
            break;
    }
});