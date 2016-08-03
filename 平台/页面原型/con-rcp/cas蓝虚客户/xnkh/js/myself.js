/**
 * Created by qi on 2016/4/27.
 */
$(document).ready(function() {
    $(".nav li").hover(function() {
        $('ul', this).fadeIn("fast");
        $(this).children().addClass("hover");
        $(".headerNavBar").css({"border-top":"1px solid #c8d8e7","border-bottom":"1px solid #c8d8e7"});
    }, function() {
        $('ul', this).fadeOut("fast");
        $(this).children().removeClass("hover");
        $(".headerNavBar").css({"border-top":"1px solid #c8d8e7","border-bottom":"1px solid transparent"});
    });

    $(".nav li a b").css("display","none");
    $(".User").click(function(){
        if($(".change").css("display")=="none"){
            $(".change").slideDown();
        }else{
            $(".change").slideUp();
        }
    });
    $(".News").click(function(){
        if($(".NewsDeta").css("display")=="none"){
            $(".NewsDeta").slideDown();
        }else{
            $(".NewsDeta").slideUp();
        }
    });
    $(".closeAsk").click(function(){
        $(".ask").hide();
    });
    $(".closeTitle").click(function(){
        $(".left_middle").hide();
    });
    $(".changeExit").click(function(){
        window.location.href="../login/login.html";
    })
});

