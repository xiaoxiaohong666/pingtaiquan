$(document).ready(function(){
    var cmenus=[
        {'id':'100','name':'��������','href':'#',
            'children':[{'id':'101','name':'ͳ�Ʊ���','href':'index.html'},
                {'id':'102','name':'ý�������ݱ���','href':'reportrecday.html reportresday'}
            ]},
        {"id":"200","name":"Ӧ�ù���","href":"#",
            "children":[{"id":"201","name":"Ӧ�ù���","href":"media/appexternal/page.html"},
                {"id":"202","name":"���λ����","href":"media/adslotexternal/page.html"}
            ]},
        {"id":"300","name":"������Ϣ","href":"#",
            "children":[{"id":"301","name":"������Ϣ","href":"manage/user/page.html"},
                {"id":"303","name":"�տ��˻�","href":"manage/user/view.html"}]}

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
