// 1.入口函数
$(function(){
    // 2.Ajax 请求 (4个参数URL、type、dataType、请求成功和失败的函数)
    $.ajax({
        url:"http://193.112.55.79:9093/php/gameCenter.php",
        type:"get",
        dataType:"json",
        success:function(res){
            
            // console.log(res);
            // console.log(typeof res);
            /*
            注意：
            这里的 template参数：id="gameCenterTmp" , 表示对应的.html要渲染模板的id表记；
            参数2：表示 返回的数据，看情况。是对象就 {data:res}
            */ 
            var htmlStr = template("gameCenterTmp",{
                data: res
            })

            // console.log(htmlStr);
            // 对模板渲染
            $("#tabContent ul").html(htmlStr);
        }
    })


    // ------ 最近更新模块数据 -------
    $.ajax({
        url:"http://193.112.55.79:9093/php/lastUpdate.php",
        type:"get",
        dataType:"json",
        success:function(res){
            console.log(res);
            //  数据
            var htmlStr = template("lastUpdateTmp",{
                data :res
            })

            // 对模板渲染
            $(".lastupdate ul").html(htmlStr);
        }
    })

})