/**
 * Author: HaiNNT
 * Created Date: 2015-06-18
 * Description: This script file store script for Question system.
 */

/*
    Global Varialble
*/
var commentReady = true;

/*
  Init see more question
*/
function seeMore(item) {
    $(item).parent().addClass("hidden");
    var parent = $($(item).parents(".mh-question-preview")[0]);
    parent.find(".mh-sort-content").addClass("hidden");
    parent.find(".mh-full-content").removeClass("hidden");
    parent.find(".mh-social-report").removeClass("hidden");
}

function seeMoreContent(item) {
    $(item).parent().addClass("hidden");
    $(item).parent().siblings(".mh-sort-content").addClass("hidden");
    $(item).parent().siblings(".mh-full-content").removeClass("hidden");
}

/*
  Init see more comment
*/
function seeMoreComment(item) {
    $(item).addClass("hidden");
    $(item).siblings(".hidden").each(function () {
        $(this).removeClass("hidden");
    });
}

/*
  Bookmark a main post
*/
function bookmark(id) {
    var url = "/Question/Bookmark";
    var data = { id: id };
    var bookmarked = ".bookmarked-" + id;
    var bookmark = ".bookmark-" + id;

    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
	  .done(function (msg) {
	      if (msg == "True") {
	          $(bookmark).each(function () { $(this).addClass("hidden"); });
	          $(bookmarked).each(function () { $(this).removeClass("hidden"); });
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
function unBookmark(id) {
    var url = "/Question/Bookmark";
    var data = { id: id };
    var bookmarked = ".bookmarked-" + id;
    var bookmark = ".bookmark-" + id;

    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
	  .done(function (msg) {
	      if (msg == "True") {
	          $(bookmark).each(function () { $(this).removeClass("hidden"); });
	          $(bookmarked).each(function () { $(this).addClass("hidden"); });
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
        CKEDITOR.replace(list[item], {
            toolbar: [
               { name: 'document', items: ['NewPage', 'DocProps', 'Preview', 'Print', '-', 'Templates'] },
               { name: 'clipboard', items: ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo'] },
               { name: 'editing', items: ['Find', 'Replace', '-', 'SelectAll', '-', 'SpellChecker', 'Scayt'] },
               {
                   name: 'forms', items: ['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton',
                       'HiddenField']
               },
               '/',
               { name: 'basicstyles', items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat'] },
               {
                   name: 'paragraph', items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv',
                   '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl', 'Language']
               },
               { name: 'links', items: ['Link', 'Unlink', 'Anchor'] },
               { name: 'insert', items: ['Chart', 'Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak', 'Iframe', 'Youtube', 'EqnEditor'] },
               '/',
               { name: 'styles', items: ['Styles', 'Format', 'Font', 'FontSize'] },
               { name: 'colors', items: ['TextColor', 'BGColor'] },
               { name: 'tools', items: ['Maximize', 'ShowBlocks', 'Fieldset', '-', 'About'] }
            ],
        });
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
        if (!tagIds[tagId]) {
            tagIds[tagId] = tagName;
            list.append($(item));
        }
    }
}

/*
    Search tags
*/
var timeoutSearchTag;
function searchTag() {
    var timeoutSearchTag;
    var list = $("#mh-list-tag");
    var load = function () {

        var param = $("#mh-search-tag").val();
        var tab = $("#tab").val();
        $.ajax({
            method: "GET",
            url: "/Question/SearchTag",
            data: { name: param, type: "search", tab: tab }
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
    $("#mh-search-tag").keypress(function () {
        list.html("");
        clearTimeout(timeoutSearchTag);
        timeoutSearchTag = setTimeout(load, 1000);
    });
}

/*
    Comment for a post
*/
function commentPost() {
    $(".mh-form-input-comment").each(function () {
        var input = $(this);
        var commentDiv = $(".mh-comment");
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
                        commentDiv.html(msg);
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
	Apply select menu
*/
function initSelectMenu() {
    $("#mh-mainpost-privacy").selectmenu();
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
              alert(msg.message);
          }
      })
      .fail(function () {
          alert("fail error");
      });

}

/*
    Load edited logs
*/
function loadEditedLog(id, type) {
    var history = $("#history-edit");
    history.html("");
    $.ajax({
        method: "POST",
        url: "/Question/EditedLog",
        data: { id: id, type: type }
    })
     .done(function (msg) {
         history.html(msg);
         $('[data-toggle="tooltip"]').tooltip();
     })
     .fail(function () {
         alert("fail error");
     });
}

/*
    Show text box for edit comment
*/
function showEditComment(item) {
    // Ẩn
    $(item).parents(".mh-comment-content").find(".mh-comment-question-content").toggle();
    $(item).parents(".mh-comment-content").find(".mh-comment-question-username").toggle();
    $(item).parents(".mh-comment-content").find(".mh-time").toggle();
    $(item).parents(".mh-comment").find(".mh-commet-edit").toggle();
    $(item).parents(".mh-comment-content").find(".mh-comment-history-edit").toggle();
    //Hiện
    $(item).parents(".mh-comment-content").find(".mh-comment-edit-textarea").toggle();
    $(item).parents(".mh-comment-content").find(".mh-note").toggle();
}

/*
    Edit comment
*/
function editComment() {
    $(".mh-comment-edit-textarea").each(function () {
        var input = $(this);
        input.keypress(function (e) {
            if (e.keyCode === 13 && commentReady) {
                e.preventDefault();
                var content = input.val();
                var id = input.attr("comment-id");
                $.ajax({
                    method: "Post",
                    url: "/Question/EditComment",
                    data: { id: id, content: content }
                })
				.done(function (msg) {
				    if (msg == "True") {
				        $("#comment-content-" + id).html(content);
				        input.parent().find(".edited-button").removeClass("hidden");
				        closeEditComment();
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
    Show ckeditor for edit answer and hint
*/
function editAnswer(item) {
    // Ẩn
    $(item).parents(".mh-answer_hint-detail").find(".mh-answer_hint-detail-content").toggle();
    $(item).parents(".mh-answer_hint-detail").find(".mh-answer_hint-user_info").toggle();
    $(item).parents(".mh-answer_hint-content").find(".mh-commet-edit").toggle();
    //Hiện
    $(item).parents(".mh-answer_hint-detail").find(".mh-answer_hint-edit-textarea").toggle();
    $(item).parents(".mh-answer_hint-detail").find(".mh-note-answer_hint").toggle();
}

/*
    Close text box edit comment
*/
function closeEditComment() {
    //Hiện
    $(".mh-comment-question-content").show();
    $(".mh-comment-question-username").show();
    $(".mh-time").show();
    $(".mh-commet-edit").show();
    $(".mh-comment-history-edit").show();
    //Ẩn
    $(".mh-note").hide();
    //Ẩn + set về giá trị ban đầu
    var inputs = $(".mh-comment-edit-textarea");
    inputs.each(function () {
        var input = $(this);
        var val = input.siblings(".mh-note").find("button").val();
        input.val(val);
        input.hide();
    });
    //input.hide();
    //input.val($(this).val());
}

/*
    Close ckeditor edit answer
*/
function closeEditAnswer() {
    //Hiện
    $(".mh-answer_hint-detail-content").show();
    $(".mh-answer_hint-user_info").show();
    $(".mh-commet-edit").show();
    //Ẩn
    $(".mh-note-answer_hint").hide();
    //Ẩn + set về giá trị ban đầu
    var list = [];
    $(".mh-ckeditor-textarea").each(function () {
        list.push($(this).attr("id"));
    });
    //inputs.each(function () {
    //    var input = $(this);
    //    CKEDITOR.instances[list[item]]
    //    var val = input.siblings(".mh-note-answer_hint").find("button").val();
    //    input.val(val);
    //    input.hide();
    //});
    for (var item in list) {
        //var data = $(list[item]).siblings(".mh-note-answer_hint").find("button").val();
        CKEDITOR.instances[list[item]].setData();
        $("#" + list[item]).parent().hide();
    }

}

/*
    Accept/Unaccept an answer
*/
function accept(item, id) {
    $.ajax({
        method: "Post",
        url: "/Question/Accept",
        data: { answerId: id }
    })
	.done(function (msg) {
	    if (msg == "True") {
	        if ($(item).hasClass("mh-checked")) {
	            $(item).removeClass("mh-checked");
	        } else {
	            $(item).addClass("mh-checked");
	        }
	    } else {
	        alert("Bạn không thể chấp nhận hơn 1 câu trả lời");
	    }
	})
	.fail(function (msg) {
	    alert(msg);
	});
}

/*
    Send report
*/
function sendReport(id) {
    var formId = "#report-form-" + id;
    $.post('/Question/Report', $(formId).serialize())
        .done(function (msg) {
            $(formId).trigger("reset");
            if (msg == "False")
                alert("Bạn không thể báo cáo nhiều hơn 1 lần");
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
            //seeMore();
            break;
        case "question-create":
            togglePreview();
            initSelectMenu();
            initCkeditor(true);
            break
        case "question-edit":
            togglePreview();
            initSelectMenu();
            initCkeditor(true);
            break;
        case "question-tags":
            applyInfinityLoading();
            searchTag();
            break;
        case "question-users":
            applyInfinityLoading();
            break;
        case "question-detail":
            initCkeditor(false);
            commentPost();
            editComment();
            //seeMoreComment();
            break;
        default:
            applyInfinityLoading();
            //seeMore();
            break;
    }
});