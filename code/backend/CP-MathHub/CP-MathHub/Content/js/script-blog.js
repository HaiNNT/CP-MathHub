/**
 * Author: HaiNNT
 * Created Date: 2015-06-27
 * Description: This script file store script for Blog system.
 */

/*
    Global Varialble
*/
var commentReady = true;

/*
	Init Slide show
*/
function hotArticleSlideShow() {
    if ($(".crsl-items").length > 0) {
        $('.crsl-items').carousel({
            visible: 3,
            itemMinWidth: 180,
            itemEqualHeight: 370,
            itemMargin: 12,
        });
        $("a[href=#]").on('click', function (e) {
            e.preventDefault();
        });
        var interval = setInterval(function () { slider.next(); }, 5000);
        $("#navbtns > a").each(function () {
            $(this).click(function () {
                clearInterval(interval);
                interval = setInterval(function () { slider.next(); }, 5000);
            });
        });

        $(".mh-slideshow-contents .mh-posts-setting").each(function () {
            $(this).mouseenter(function () {
                clearInterval(interval);
            });
            $(this).mouseleave(function () {
                interval = setInterval(function () { slider.next(); }, 5000);
            });
        });
    }
}

/*
	Apply Infinity loading
*/
function applyInfinityLoading() {
    il_ready = true;
}

/*
    See more content
*/
function seemoreContent(obj) {
    $(obj).parent().addClass("hidden");
    $(obj).parent().siblings(".mh-sort-content").addClass("hidden");
    $(obj).parent().siblings(".mh-full-content").removeClass("hidden");
}

/*
    Create a tag 
*/
function createTag() {
    var name = $("#mh-input-tag").val();
    if (name.length > 5 && name.length < 13) {
        $.ajax({
            method: "POST",
            url: "/Blog/CreateTag",
            data: { name: name }
        })
      .done(function (msg) {
          if (msg) {
              add(msg);
          } else {
              message("Có lỗi xảy ra. Xin thử lại.", "danger");
          }
      })
      .fail(function () {
          message("Có lỗi xảy ra. Xin thử lại.", "danger");
      });
    } else {
        message("Tên thẻ phải có độ dài từ 6-12 ký tự","warning");
    }
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
        if (!tagIds[tagId] && list.find(".mh-tag-item").length < 5) {
            tagIds[tagId] = tagName;
            list.append($(item));
        }
    }
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
  Bookmark a main post
*/
function bookmark(id) {
    var url = "/Blog/Bookmark";
    var data = { id: id };
    var bookmarked = ".bookmarked-" + id;
    var bookmark = ".bookmark-" + id;

    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
	  .done(function (msg) {
	      if (msg) {
	          $(bookmark).each(function () { $(this).addClass("hidden"); });
	          $(bookmarked).each(function () { $(this).removeClass("hidden"); });
	      } else {
	          message("Có lỗi xảy ra. Xin thử lại.", "danger");
	      }
	  })
	  .fail(function () {
	      message("Có lỗi xảy ra. Xin thử lại.", "danger");
	  });
}

/*
  Unbookmark a main post
*/
function unBookmark(id) {
    var url = "/Blog/Bookmark";
    var data = { id: id };
    var bookmarked = ".bookmarked-" + id;
    var bookmark = ".bookmark-" + id;

    $.ajax({
        method: "POST",
        url: url,
        data: data
    })
	  .done(function (msg) {
	      if (msg) {
	          $(bookmark).each(function () { $(this).removeClass("hidden"); });
	          $(bookmarked).each(function () { $(this).addClass("hidden"); });
	      } else {
	          message("Có lỗi xảy ra. Xin thử lại.", "danger");
	      }
	  })
	  .fail(function () {
	      message("Có lỗi xảy ra. Xin thử lại.", "danger");
	  });
}

/*
  Like a main post
*/
function like(id, like) {
    var url = "/Blog/Like";
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
	          message("Có lỗi xảy ra. Xin thử lại.", "danger");
	      }
	  })
	  .fail(function () {
	      message("Có lỗi xảy ra. Xin thử lại.", "danger");
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
	Apply date time picker
*/
function initDateTimePicker() {
    if ($("#datepicker").val() == "") {
        $("#datepicker").datepicker({ dateFormat: "dd-mm-yy", minDate: 0 }).datepicker("setDate", new Date());
    } else {
        $("#datepicker").datepicker({ dateFormat: "dd-mm-yy", minDate: 0 });
    } 
}

/*
	Apply select menu
*/
function initSelectMenu() {
    $("#mh-mainpost-privacy").selectmenu();
}

/*
	See more comments
*/
function seemore(obj) {
    $(obj).addClass("hidden");
    $(obj).parent().siblings(".hidden").removeClass("hidden");
    $(obj).parent().siblings(".mh-comment-list").addClass("hidden");
}

/*
	Comment for a post
*/
function commentPost() {
    $(".mh-input-comment").each(function () {
        var input = $(this);
        var type = input.siblings(".type").val();
        var list = $(input.parents(".mh-input-commnent-div").siblings(".mh-comment-list-full"));
        //var commentNum = parseInt(input.parents(".mh-discussion-post").find(".comment").text());
        input.keypress(function (e) {
            if (e.keyCode === 13 && commentReady) {
                commentReady = false;
                var content = input.val();
                var postId = input.siblings(".post-id").val();
                console.log(content);
                console.log(postId);
                $.ajax({
                    method: "Post",
                    url: "/Blog/PostComment",
                    data: { postId: postId, content: content, type: type }
                })
				.done(function (msg) {
				    if (msg != "\n") {
				        list.html("");
				        list.append($(msg));
				        if (type != "reply") {
				            var count = $(list).find(".media mh-comment-div").length;
				            input.parents(".mh-discussion-post").find(".comment").text(count);
				        }
				        input.val("");
				        commentPost();
				        commentReady = true;
				        editComment();
				    }
				})
				.fail(function (msg) {
				    console.log(msg);
				    message("Có lỗi xảy ra. Xin thử lại.", "danger");
				});
            }
        });
    });
}

/*
    Edit comment
*/
function editComment() {
    $(".mh-comment-edit-textarea").each(function () {
        var input = $(this);
        input.keypress(function (e) {
            if (e.keyCode === 13 && commentReady) {
                var content = input.val();
                var id = input.attr("comment-id");
                $.ajax({
                    method: "Post",
                    url: "/Blog/EditComment",
                    data: { id: id, content: content }
                })
				.done(function (msg) {
				    if (msg) {
				        $("#comment-content-" + id).html(content);
				        input.parent().find(".edited-button").removeClass("hidden");
				        closeEdit();
				    }
				})
				.fail(function (msg) {
				    console.log(msg);
				    message("Có lỗi xảy ra. Xin thử lại.", "danger");
				});
            }
        });
    });
}

/*
    Enable edit
*/
function editPost(item) {
    $($(item).parents(".mh-comment-div")[0]).children(".media-body").children(".mh-comment-content").toggle();
    $($(item).parents(".mh-comment-div")[0]).children(".media-body").children(".mh-comment-activity").toggle();
    $(item).parents(".mh-comment-list").find(".mh-commet-edit").toggle();
    //Hiện
    $($(item).parents(".mh-comment-div")[0]).children(".media-body").children(".mh-comment-edit-textarea").toggle();
    $($(item).parents(".mh-comment-div")[0]).children(".media-body").children(".mh-note").toggle();
}

/*
    Get facebook share number
*/
function getFacebookShareNum() {
    $(".mh-share-num").each(function () {
        var item = $(this);
        var url = "http://graph.facebook.com/";
        var id = item.attr("mh-url");
        $.ajax({
            method: "GET",
            url: url,
            dataType: "json",
            data: { id: id }
        })
     .done(function (msg) {
         item.html(msg.shares);
     })
     .fail(function () {
         message("Có lỗi xảy ra. Xin thử lại.", "danger");
     });
    });
}

/*
    Send report
*/
function sendReport(id) {
    var formId = "#report-form-" + id;
    $.post('/Blog/Report', $(formId).serialize())
        .done(function (msg) {
            $(formId).trigger("reset");
            if (msg == "False")
                message("Bạn không thể báo cáo nhiều hơn 1 lần","warning");
            else
                message("Báo cáo vi phạm thành công ", "success");
        })
         .fail(function () {
             message("Có lỗi xảy ra. Xin thử lại.", "danger");
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
        url: "/Blog/EditedLog",
        data: { id: id, type: type }
    })
     .done(function (msg) {
         history.html(msg);
         $('[data-toggle="tooltip"]').tooltip();
     })
     .fail(function () {
         message("Có lỗi xảy ra. Xin thử lại.", "danger");
     });
}

/*
    Close edit 
*/
function closeEdit() {
    //Hiện
    $(".mh-comment-content").show();
    $(".mh-comment-acitvity").show();
    $(".mh-commet-edit").show();
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

$(document).ready(function () {
    switch ($("#mh-page").val()) {
        case "blog-home":
            hotArticleSlideShow();
            applyInfinityLoading();
            break;
        case "blog-create":
            togglePreview();
            initCkeditor(true);
            initSelectMenu();
            initDateTimePicker();
            break;
        case "blog-edit":
            togglePreview();
            initCkeditor(true);
            initSelectMenu();
            initDateTimePicker();
            break;
        case "blog-detail":
            editComment();
            commentPost();
            //getFacebookShareNum();
            break;
        default:
            hotArticleSlideShow();
            applyInfinityLoading();
            break;
    }
});