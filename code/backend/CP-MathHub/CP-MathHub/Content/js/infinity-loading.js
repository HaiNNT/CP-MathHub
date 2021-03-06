﻿/**
 * Author: HaiNNT
 * Created Date: 2015-06-18
 * Description: This script file store 'infinity loading' script for infinity scroll feature.
 */

var il_page = 0;
var il_ready = false;
var IL_TYPE_QUESTION = "Question";
var IL_TYPE_ARTICLE = "Blog";
var IL_TYPE_DISCUSSION = "Discussion";
var IL_TYPE_USER = "user";
var IL_TYPE_TAG = "tag";
var IL_TYPE_SEARCH_USER = "searchuser";
var IL_TYPE_SEARCH_TAG = "searchtag";
var IL_LOADING_ICON;

$(document).ready(function () {
    IL_LOADING_ICON = $("#mh-loading-icon");
    $(window).scroll(function () {
        if (($(window).scrollTop() + $(window).height() > $(document).height() - 1500) && il_ready) {
            il_ready = false;
            IL_LOADING_ICON.removeClass("hidden");
            var type = $("#system").val(); 
            getMoreMainPost(type);
        }
    });
})

/*
Get more main post from server by ajax

@author 
@this {function}
@param {string} type : Type of main post to loading more.
 */
function getMoreMainPost(type) {
    var list; //current list main post {list of jquery entities}
    var url; //server url {string}
    var data; //request param {object}
    switch(type) {
        case IL_TYPE_QUESTION:
            list = $("#list-questions");
            var tab = $("#tab").val();
            switch (tab) {
                case "Search":
                    var searchString = $("#tab-param").val();
                    url = "/Question/Search";
                    data = { searchString: searchString, page: ++il_page };
                    break;
                case "Tag":
                    var tag = $("#tab-param").val();
                    url = "/Question/Tag";
                    data = { tag: tag, page: ++il_page };
                    break;
                default:
                    var tab = $("#tab").val();
                    url = "/Question/Index";
                    data = { tab: tab, page: ++il_page }
                    break;
            }
            break;
        case IL_TYPE_DISCUSSION:
            list = $("#list-discussions");
            var tab = $("#tab").val();
            switch (tab) {
                case "Search":
                    var searchString = $("#tab-param").val();
                    url = "/Discussion/Search";
                    data = { searchString: searchString, page: ++il_page };
                    break;
                case "Tag":
                    var tag = $("#tab-param").val();
                    url = "/Discussion/Tag";
                    data = { tagId: tag, page: ++il_page };
                    break;
                case "CategoryIndex":
                    var tag = $("#tab-param").val();
                    url = "/Discussion/CategoryIndex";
                    data = { tagId: tag, page: ++il_page };
                    break;
                default:
                    var tab = $("#tab").val();
                    url = "/Discussion/Index";
                    data = { tab: tab, page: ++il_page }
                    break;
            }
            break;
        case IL_TYPE_ARTICLE:
            list = $("#list-articles");
            var tab = $("#tab").val();
            switch (tab) {
                case "Search":
                    var searchString = $("#tab-param").val();
                    url = "/Blog/Search";
                    data = { searchString: searchString, page: ++il_page };
                    break;
                case "Tag":
                    var tag = $("#tab-param").val();
                    url = "/Blog/Tag";
                    data = { tag: tag, page: ++il_page };
                    break;
                case "Mine", "Bookmark", "Subcribe", "Friend":
                    var view = $("#view").val();
                    url = "/Blog/MyBlog";
                    data = { tab: tab, page: ++il_page, view: view }
                    break;
                case "User", "UserBookmark":
                    var view = $("#view").val();
                    url = "/Blog/UserBlog";
                    data = { tab: tab, page: ++il_page, view: view }
                    break;
                default:
                    var view = $("#view").val();
                    url = "/Blog/Index";
                    data = { tab: tab, page: ++il_page, view: view }
                    break;
            }
            break;
        case IL_TYPE_USER:
            list = $("#mh-list-user");
            var tab = $("#tab").val();
            url = "/Account/Users";
            data = { tab: tab, page: ++il_page };
            break;
        case IL_TYPE_TAG:
            list = $("#mh-list-tag");
            var tab = $("#tab").val();
            url = "/Question/Tags";
            data = { tab: tab, page: ++il_page };
            break;
        case IL_TYPE_SEARCH_USER:
            list = $("#mh-list-user");
            var tab = $("#tab").val();
            var name = $("#tab-param");
            url = "/Account/Users";
            data = { tab: tab, page: ++il_page, name: name };
            break;
        case IL_TYPE_SEARCH_TAG:
            list = $("#mh-list-tag");
            var tab = $("#tab").val();
            var name = $("#tab-param");
            url = "/Question/Tags";
            data = { tab: tab, page: ++il_page, name: name, type: "search" };
            break;
        default:
            list = $("#list-questions");           
            var tab = $("#tab").val();
            switch (tab) {
                case "Search":          
                    var searchString = $("#tab-param").val();
                    url = "/Question/Search";
                    data = { searchString: searchString, page: ++il_page };
                    break;
                case "Tag":
                    var tag = $("#tab-param").val();
                    url = "/Question/Tag";
                    data = { tag: tag, page: ++il_page };
                    break;
                default:
                    var tab = $("#tab").val();
                    url = "/Question/Index";
                    data = { tab: tab, page: ++il_page }
                    break;
            }

    }
        
    $.ajax({
        method: "GET",
        url: url,
        data: data
    })
      .done(function (msg) {
          IL_LOADING_ICON.remove();
          list.append(msg);
          IL_LOADING_ICON.addClass("hidden");
          list.append(IL_LOADING_ICON);
          if (type == IL_TYPE_DISCUSSION)
              commentPost();
          if(msg.trim() != "")
            il_ready = true;
      })
      .fail(function () {
          --il_page; 
          //message("Có lỗi xảy ra. Xin thử lại.", "danger");
      });
}

/*
    Message notification
*/
function message(content, type) {
    var div = '<div class="alert alert-' + type + ' fade in" id="message-notification" style="position: fixed; top: 80px; left: 40%; z-index: 9999;">' +
                    '<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' +
                    content +
              '</div>';
    $("body").append(div);
    setTimeout(function () { $("#message-notification").remove() }, 3000);
}