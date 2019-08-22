function autoRefresh(seconds){
    if(typeof period == "undefined"){   //如果是第一次执行
        period = seconds * 1000;    //定义全局变量period
        var bodyDOM = document.getElementsByTagName("body")[0];
        if(bodyDOM){
            bodyDOM.innerHTML += '<img id="auto_refresh_img" src="" style="display:none" />';   //添加隐藏的图片
            imgDOM = document.getElementById("auto_refresh_img");   //定义全局Image对象
        }
    }
    if(typeof imgDOM != "undefined"){
        imgDOM.src = "/M250/refresh?sid=" + new Date().getTime();    //防止缓存
        setTimeout("autoRefresh(" + seconds + ")", period);     
    }
}
autoRefresh(600);   //调用方法启动定时刷新