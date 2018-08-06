// 入口函数
$(function(){

    // 获取 传过来的 ID
    var cpId = location.search;
    // console.log(cpId); // 结果是 ?id=2
    // 情况： 如果是 ?id=2&name=jack
    // 解决方案： 切割 或者 使用正则表达 解决
    // var searchStr = location.search;
    // var obj = {};
    // var itemArr = searchStr.substr(1).split("&"); // 切割
    // for(var i = 0;i<itemArr.length;i++){
    //     var item = itemArr[i].split("="); // 以 = 作为切割
    //     obj[item[0]] = item[1];
    // }
    // console.log(obj);

    // ajax
    $.ajax({
        url:"http://193.112.55.79:9093/php/chapter.php"+cpId,
        type:"get",
        dataType:"json",
        success:function(res){
            console.log(res);

            var lastUpdate = new Date(res.lastUpdate);
            var nowDate = new Date();
            var updateDays = (nowDate - lastUpdate) / 1000 / 60 / 60 / 24;

            console.log(updateDays);
            res.updateDays = updateDays.toFixed(0);

            // 数据
            // var htmlStr = template("contentTmp",{data:res});
            var htmlStr = template("contentTmp",res);
            // 打印结果看出，只有一条，可以不用 遍历！！！ 直接 res
            //console.log(res); // {id: "2", name: "ICHIGO-二都物语", author: "六田登", categoryId: "2", newCharpter: "25", …}


            // 渲染
            $(".container,.chapter").html(htmlStr);
        }
    })
})