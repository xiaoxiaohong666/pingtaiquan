/**
 * Created by qi on 2016/8/2.
 */
var getParams = function(url) {
    if(url === undefined || typeof(url) != 'string'){
        return null;
    }
    items = url.split('?')[1].split('&');
    var json = {};
    for(var i=0; i< items.length;i++) {
        var item = items[i].split('=');
        alert(item[1]);
        json[item[0]] = item[1];
    }
};
var url=document.location.href;
getParams(url);