var menuNum;
$(document).ready(function(){
    $(".nav li a b").css("display","none");
    function you(){
        var yyy = $("#divid > ul > li").length;
        menuNum = yyy;
        return yyy;
    }
    you();
    $("#divid > ul > li").each(function(index,demo){
        if(index>showNumEnd-1){
            $(this).hide();
        }else{
            $(this).show();
        }

    });
});
//一级菜单显示顺序(1-6)
var showNumStart = 1;

var showNumEnd = 6;

//向右移动
function rfun(){
    if(showNumEnd==10)return;
    showNumEnd = showNumEnd + 1;
    showNumStart = showNumStart + 1;
    $("#divid > ul > li").each(function(index,demo){
        if(index>showNumEnd-1||showNumStart-1>index){
            $(this).hide();
        }else{
            $(this).show();
        }
    });
}
//向左移动
function lfun(){
    if(showNumStart==1)return;
    showNumEnd = showNumEnd - 1;
    showNumStart = showNumStart - 1;
    $("#divid > ul > li").each(function(index,demo){
        if(index>showNumEnd-1||showNumStart-1>index){
            $(this).hide();
        }else{
            $(this).show();
        }
    });
}
