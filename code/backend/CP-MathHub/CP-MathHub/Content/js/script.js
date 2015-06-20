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

$(document).ready(function () {
    seeMore();
})