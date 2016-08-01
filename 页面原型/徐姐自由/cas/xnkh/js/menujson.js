$(document).ready(function(){
    var cmenus=[
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

            childrenval+="<li>"+"<a href='"+cmenus[i].children[j].href+"'>"+cmenus[i].children[j].name+"</a>"+"</li>";
        }
        htmlval = htmlval+"<ul>" +childrenval+"</ul>"+"</li>";

        nav.append(htmlval);
    }
});

var menus = [
    {'id':'100','name':'报表中心','href':'#',
        'children':[{'id':'101','name':'统计报表','href':'index.html'},
            {'id':'102','name':'媒体日数据报表','href':'1.html'}
        ]},
    {"id":"200","name":"应用管理","href":"#",
        "children":[{"id":"201","name":"应用管理","href":"2/2.html"},
            {"id":"202","name":"广告位管理","href":"2/2.html"}
        ]},
    {"id":"300","name":"个人信息","href":"#",
        "children":[{"id":"301","name":"基础信息","href":"2/3/3.html"},
            {"id":"303","name":"收款账户","href":"2/3/3.html"}]}

];
