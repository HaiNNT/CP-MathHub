function countUp(item) {
        var count = parseInt($(item).text());
        var div_by = 100,
            speed = Math.round(count / div_by) != 0 ? Math.round(count / div_by) : 1,
            $display = $(item),
            run_count = 1,
            int_speed = 24;

        var int = setInterval(function () {
            var display = speed * run_count;
            if (run_count < div_by && display <= count) {
                $display.text(display);
                run_count++;
            } else if (parseInt($display.text()) < count) {
                var curr_count = parseInt($display.text()) + 1;
                $display.text(curr_count);
            } else {
                clearInterval(int);
            }
        }, int_speed);
}

$(document).ready(function () {
    $('.count').each(function () {
        countUp(this);
    });
});




//function countUp2(count)
//{
//    var div_by = 100,
//        speed = Math.round(count / div_by),
//        $display = $('.count2'),
//        run_count = 1,
//        int_speed = 24;

//    var int = setInterval(function() {
//        if(run_count < div_by){
//            $display.text(speed * run_count);
//            run_count++;
//        } else if(parseInt($display.text()) < count) {
//            var curr_count = parseInt($display.text()) + 1;
//            $display.text(curr_count);
//        } else {
//            clearInterval(int);
//        }
//    }, int_speed);
//}

//countUp2(947);

//function countUp3(count)
//{
//    var div_by = 100,
//        speed = Math.round(count / div_by),
//        $display = $('.count3'),
//        run_count = 1,
//        int_speed = 24;

//    var int = setInterval(function() {
//        if(run_count < div_by){
//            $display.text(speed * run_count);
//            run_count++;
//        } else if(parseInt($display.text()) < count) {
//            var curr_count = parseInt($display.text()) + 1;
//            $display.text(curr_count);
//        } else {
//            clearInterval(int);
//        }
//    }, int_speed);
//}

//countUp3(328);

//function countUp4(count)
//{
//    var div_by = 100,
//        speed = Math.round(count / div_by),
//        $display = $('.count4'),
//        run_count = 1,
//        int_speed = 24;

//    var int = setInterval(function() {
//        if(run_count < div_by){
//            $display.text(speed * run_count);
//            run_count++;
//        } else if(parseInt($display.text()) < count) {
//            var curr_count = parseInt($display.text()) + 1;
//            $display.text(curr_count);
//        } else {
//            clearInterval(int);
//        }
//    }, int_speed);
//}

//countUp4(10328);