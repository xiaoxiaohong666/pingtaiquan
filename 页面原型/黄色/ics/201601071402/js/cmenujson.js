/**
 * Created by qi on 2016/8/2.
 */
function menu(Num){
    var cmenus=[
        {'id':'100','name':'报表中心','href':'#',
            'children':[{'id':'101','name':'媒体报表','href':'media/index.html'},
                {'id':'102','name':'客户报表','href':'media/appexternal/customereport.html'},
                {'id':'103','name':'内部报表','href':'#'}]},
        {"id":"200","name":"媒体管理","href":"#",
            "children":[{"id":"201","name":"应用审核","href":"media/appaudit/page.html"},
                {"id":"202","name":"ad采购报价","href":"media/appaudit/buyprice.html"},
                {"id":"203","name":"ad销售报价","href":"media/appaudit/sellprice.html"},
                {"id":"204","name":"ad对接留档","href":"media/appaudit/butt.html"},
                {"id":"205","name":"应用管理","href":"media/appexternal/page.html"},
                {"id":"206","name":"广告位管理","href":"media/appaudit/adpage.html"}]},
        {"id":"300","name":"客户管理","href":"#",
            "children":[{"id":"301","name":"内部普通订单","href":"media/appinterior/internalorder.html"},
                {"id":"302","name":"内部余量订单","href":"media/appinterior/remnantorder.html"},
                {"id":"303","name":"客户订单","href":"media/appinterior/customerorder.html"},
                {"id":"304","name":"广告测试","href":"media/appinterior/adstest.html"}]},
        {"id":"400","name":"运维监控","href":"#",
            "children":[{"id":"401","name":"超级监控","href":"#"},
                {"id":"402","name":"策略监控","href":"#"},
                {"id":"403","name":"日监控","href":'#'}]},
        {"id":"500","name":"结算中心","href":"#",
            "children":[{"id":"501","name":"日结算数据","href":"#"},
                {"id":"502","name":"媒体结算","href":"#"},
                {"id":"503","name":"客户结算","href":'#'}]},
        //{"id":"600","name":"财务管理","href":"#",
        //    "children":[{"id":"601","name":"内部员工","href":"#"},
        //        {"id":"602","name":"媒体用户","href":"#"},
        //        {"id":"603","name":"客户管理","href":"#"},
        //        {"id":"602","name":"媒体用户","href":"#"},
        //        {"id":"603","name":"客户管理","href":"#"},
        //        {"id":"602","name":"媒体用户","href":"#"},
        //        {"id":"603","name":"客户管理","href":"#"}]},
        {"id":"700","name":"平台用户","href":"#",
            "children":[{"id":"601","name":"内部员工","href":"media/userplatform/userplatform.html"},
                {"id":"602","name":"媒体用户","href":"media/userplatform/usermedia.html"},
                {"id":"603","name":"客户管理","href":"media/userplatform/userclient.html"}
            ]},
        {"id":"800","name":"信息管理","href":"#",
            "children":[{"id":"801","name":"留言板","href":"#"},
                {"id":"802","name":"信息公告","href":"#"},
                {"id":"803","name":"新手帮助","href":"#"},
                {"id":"805","name":"服务条款","href":"#"},
                {"id":"805","name":"SDK附件","href":"media/infomanage/sdkadjunct.html"}
            ]},
        {"id":"900","name":"基础信息","href":"#",
            "children":[{"id":"901","name":"系统参数","href":"media/baseinfo/ststmargue.html"},
                {"id":"902","name":"投放地区","href":"media/baseinfo/putarea.html"},
                {"id":"903","name":"数据字典","href":"#"},
                {"id":"905","name":"内部职务","href":"#"},
                {"id":"905","name":"媒体分类","href":"#"}
            ]}
        //{"id":"1000","name":"系统管理","href":"#",
        //    "children":[{"id":"1001","name":"功能菜单","href":"#"},
        //        {"id":"1002","name":"人员组织","href":"#"},
        //        {"id":"1003","name":"菜单权限","href":"#"},
        //        {"id":"1005","name":"数据权限","href":"#"}]},
        //{"id":"1002","name":"系统日志","href":"#"},
        //{"id":"1003","name":"操作日志","href":"#"}
    ];
    var nav=$(".nav" );
    for(var i=0;i<cmenus.length;i++){

        var htmlval='';
        htmlval =  "<li>"+ "<a href=''>"+cmenus[i].name+"</a>";

        var childrenval = "";
        for( var j=0;j<cmenus[i].children.length;j++){
            if(Num==1){
                childrenval+="<li>"+"<a href='"+'../'+cmenus[i].children[j].href+"'>"+cmenus[i].children[j].name+"</a>"+"</li>";
            }
            if(Num==2){
                childrenval+="<li>"+"<a href='"+'../../'+cmenus[i].children[j].href+"'>"+cmenus[i].children[j].name+"</a>"+"</li>";
            }
            if(Num==3){
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
// 退出和修改密码结束
}
