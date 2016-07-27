$(document).ready(function(){
    var cmenus=[
        {'id':'100','name':'报表中心','href':'#',
            'children':[{'id':'101','name':'统计报表','href':'index.html'},
                {'id':'102','name':'媒体日数据报表','href':'reportrecday.html reportresday'}
            ]},
        {"id":"200","name":"应用管理","href":"#",
            "children":[{"id":"201","name":"应用管理","href":"media/appexternal/page.html"},
                {"id":"202","name":"广告位管理","href":"media/adslotexternal/page.html"}
            ]},
        {"id":"300","name":"个人信息","href":"#",
            "children":[{"id":"301","name":"基础信息","href":"manage/user/page.html"},
                {"id":"303","name":"收款账户","href":"manage/user/view.html"}]}

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
})
