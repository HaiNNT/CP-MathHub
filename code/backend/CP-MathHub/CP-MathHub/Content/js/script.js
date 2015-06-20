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

$(document).ready(function () {
    seeMore();
})