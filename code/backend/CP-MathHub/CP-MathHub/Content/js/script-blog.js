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
function hotArticleSlideShow(){
	$('.crsl-items').carousel({
		visible: 3,
		itemMinWidth: 180,
		itemEqualHeight: 370,
		itemMargin: 12,
	});
		$("a[href=#]").on('click', function(e) {
			e.preventDefault();
		});
		var interval = setInterval(function(){slider.next();}, 5000);
		$("#navbtns > a").each(function(){
			$(this).click(function(){
				clearInterval(interval); 
				interval = setInterval(function () { slider.next(); }, 5000);
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
		  if (msg) {
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
	Apply date time picker
*/
function initDateTimePicker() {    
	$("#datepicker").datepicker({ dateFormat: "dd-mm-yy", minDate: 0 }).datepicker("setDate", new Date());
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
	$(obj).parent().siblings(".mh-comment-list-full").removeClass("hidden");
	$(obj).parent().siblings(".mh-comment-list").addClass("hidden");
}

/*
	Comment for a post
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
					url: "/Blog/PostComment",
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
	    case "blog-detail":
	        commentPost();
			break;
		default:
			hotArticleSlideShow();
			applyInfinityLoading();
			break;
	}
});