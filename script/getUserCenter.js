// 入口函数
$(function(){
    // Ajax
    $.ajax({
        url:"http://193.112.55.79:9093/php/fav.php",
        type:"get",
        dataType:"json",
        success: function(res){
            console.log(res);

            // 数据
            var htmlStr = template("userCenterListTmp",{data:res});
            // 渲染
            $(".gamecenter ul").html(htmlStr);
        }
    })
})