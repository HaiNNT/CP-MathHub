/**
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

$(document).ready(function () {
    var type = $("#system").val();

    $(window).scroll(function () {
        if (($(window).scrollTop() + $(window).height() > $(document).height() - 1500) && il_ready) {
            il_ready = false;
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
        //case IL_TYPE_DISCUSSION:
        //    list = $("#list-discussions");
        //    url = "Discussion/Index";
        //    data = { tab: "Newest", page: ++il_page }
        //    break;
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
                default:
                    var tab = $("#tab").val();
                    url = "/Blog/Index";
                    data = { tab: tab, page: ++il_page }
                    break;
            }
            break;
        case IL_TYPE_USER:
            list = $("#mh-list-user");
            var tab = $("#tab").val();
            url = "/Question/Users";
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
            url = "/Question/Users";
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
          list.append(msg);
          if (type != IL_TYPE_ARTICLE)
            seeMore();
          if(msg != "\n")
            il_ready = true;
      })
      .fail(function () {
          --il_page;
          alert("error");
      });
}