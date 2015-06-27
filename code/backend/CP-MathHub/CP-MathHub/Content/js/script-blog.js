/**
 * Author: HaiNNT
 * Created Date: 2015-06-27
 * Description: This script file store script for Blog system.
 */

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

$(document).ready(function () {
    hotArticleSlideShow();
});