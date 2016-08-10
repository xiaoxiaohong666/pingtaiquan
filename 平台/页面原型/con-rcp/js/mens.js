
//nuber是html文件所在等级
function jsonmenus(nuber){

    var cmenus  = [
        {'id':'100','name':'报表中心','href':'#',
            'children':[{'id':'101','name':'统计报表','href':'advertiser/index.html'},
                {'id':'102','name':'客户日数据报表','href':'advertiser/reportrecday.html'}
            ]},
        {"id":"200","name":"订单管理","href":"#",
            "children":[{"id":"201","name":"普通订单","href":"advertiser/indentexternal/page.html"},
                {"id":"202","name":"余量订单","href":"advertiser/indentexternal/remindorder.html"}
            ]},
        {"id":"300","name":"个人信息","href":"#",
            "children":[{"id":"301","name":"基础信息","href":"advertiser/indentInterior/page.html"},
                {"id":"302","name":"信息完善","href":"advertiser/indentInterior/edit.html"}]}
    ];
    var nav=$(".nav" );

    for(var i=0;i<cmenus.length;i++){

        var htmlval='';
        htmlval =  "<li>"+ "<a href=''>"+cmenus[i].name+"</a>";

        var childrenval = "";
        for( var j=0;j<cmenus[i].children.length;j++){
            //nuber是html文件所在等级 =1
            if(nuber==1){
                childrenval+="<li>"+"<a href='"+'../'+cmenus[i].children[j].href+"'>"+cmenus[i].children[j].name+"</a>"+"</li>";
            }
            //nuber是html文件所在等级 =1 ../
            if(nuber==2){
                childrenval+="<li>"+"<a href='"+'../../'+cmenus[i].children[j].href+"'>"+cmenus[i].children[j].name+"</a>"+"</li>";
            }
            //nuber是html文件所在等级 =1 ../../
            if(nuber==3){
                childrenval+="<li>"+"<a href='"+'../../../'+cmenus[i].children[j].href+"'>"+cmenus[i].children[j].name+"</a>"+"</li>";
            }

        }
        htmlval = htmlval+"<ul>" +childrenval+"</ul>"+"</li>";

        nav.append(htmlval);
    }


}
//退出修改密码开始
function shu(a){
    if(a==1){
        $(".changePwd").attr("href","../login/change.html");
    }if(a==2){
        $('.changePwd').attr('href',"../../login/change.html");
    }if(a==3){
        $('.changePwd').attr('href',"../../../login/change.html");
    }
}
function exit(a){
    if(a==1){
        $(".changeExit").attr('href','../login/login.html');
    }if(a==2){
        $(".changeExit").attr('href','../../login/login.html')
    }if(a==3){
        $(".changeExit").attr('href','../../../login/login.html')
    }
}
function sdk(a){
    if(a==1){
        $(".SDK").attr('href','../advertiser/sdk.html');
    }if(a==2){
        $(".SDK").attr('href','../../advertiser/sdk.html')
    }if(a==3){
        $(".SDK").attr('href','../../../advertiser/sdk.html')
    }
}
// 退出和修改密码结束