# buka
动漫游戏中心
###写个动态的页面
1.直接看效果：
![布卡动漫.png](https://upload-images.jianshu.io/upload_images/1197386-cec1961b0abc6447.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
使用到的是我们今天的主角    [art-template](https://aui.github.io/art-template/zh-cn)，一个简约、超快的模板引擎。
2.它有2种语法（原始语法、标准语法）：

标准语法：
~~~
  {{if user}}
      <h2>{{user.name}}</h2>
  {{/if}}
~~~
原始语法：（有点像.ASP 风格）
~~~
    <% if (user) { %>
        <h2><%= user.name %></h2>
    <% } %>
~~~

注意：上面的 “=” 表是 赋值。原始语法一定要记得添加。

#渲染模板
~~~
    var template = require('art-template');
    var html = template(__dirname + '/tpl-user.art', {
      user: {
          name: 'aui'
      }
});
~~~
#核心方法
~~~
    // 基于模板名渲染模板
template(filename, data);

// 将模板源代码编译成函数
template.compile(source, options);

// 将模板源代码编译成函数并立刻执行
template.render(source, data, options);
~~~
#常用的语法
### 1. 原文输出 
就是后台输出的格式是 ***标签*** 的形式：
例如：
![后台返回标签形式.png](https://upload-images.jianshu.io/upload_images/1197386-a95b10b390199b69.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#### 语法
    {{@ value }}
#### 原始语法
      <%- value %>

###2. 条件

   #####标准语法
    {{if value}} ... {{/if}}
    {{if v1}} ... {{else if v2}} ... {{/if}}
#### 原始语法
    <% if (value) { %> ... <% } %>
    <% if (v1) { %> ... <% } else if (v2) { %> ... <% } %>

##3. 循环

  ####标准语法
~~~
{{each target}}
    {{$index}} {{$value}}
{{/each}}
~~~
#####原始语法
~~~
    <% for(var i = 0; i < target.length; i++){ %>
    <%= i %> <%= target[i] %>
    <% } %>
~~~
注意：
- target 支持 array 与 object 的迭代，其默认值为 $data。
- $value 与 $index 可以自定义：{{each target val key}}。

###4.变量
标准语法
~~~
  {{set temp = data.sub.content}}
~~~
原始语法
~~~
  <% var temp = data.sub.content; %>
~~~
更多请看官网。。。

现在看我们的真实项目如何使用吧！

这是下面将要动态显示的数据！！！
![模板.png](https://upload-images.jianshu.io/upload_images/1197386-c5f61ea462624989.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)



###1.导入模板
![art-template.png](https://upload-images.jianshu.io/upload_images/1197386-79bcaf34ea93d2d9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 引入js到代码
~~~
  <!-- 1.1 引入 art-template 模板 -->
<script src="./assets/art-template/template-web.js"></script>
<!-- 处理某小块的请求数据 -->
<script src="./script/getIndex.js"></script>
~~~
- 2.使用模板 
新建  getIndex.js （上图引入的 js脚本），里面注释很详细了。
~~~
  // 1.入口函数
$(function(){
    // 2.Ajax 请求 (4个参数URL、type、dataType、请求成功和失败的函数)
    $.ajax({
        url:"http://193.112.55.79:9093/php/gameCenter.php",
        type:"get",
        dataType:"json",
        success:function(res){
            
            // console.log(res);

            /*
            注意：
            这里的 template参数：id="gameCenterTmp" , 表示对应的.html要渲染模板的id表记；
            参数2：表示 返回的数据，看情况。是对象就 {data:res}
            */ 
            var htmlStr = template("gameCenterTmp",{
                data: res
            })
            // console.log(htmlStr);
            // 对模板渲染 （tabContent 是元素的id ）
            $("#tabContent ul").html(htmlStr);
        }
    })

})
~~~

这时看到的效果就是：（这说明有请求到数据）
![解析结果.png](https://upload-images.jianshu.io/upload_images/1197386-aa5e352662e0f318.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


- 回到.html页面，渲染就可以了。
~~~
  <!-- 2.使用模板 -->
<!-- 注意：
1.type：处script外都可以命名。因为我们不想让它变成script 解析。通常使用 template
2.id :这个是在解析 后台数据时标记是哪个 模板的请求数据
3.添加一个 新的 js 文件用来Ajax处理请求数据
-->
<script type="text/template" id="gameCenterTmp">

    {{each data value index}}
  
    <li>
      <script type="text/template" id="gameCenterTmp">

    {{each data value index}}
    <li>
        <!-- 
            原本是这样的：

            <a href='chapter.html'>
            <img src="./images/lhsl_199x259.jpg" alt="">
            <p class='bookname'>灵魂撕裂</p>

        </a> -->

        <a href='chapter.html?id={{value.id}}'>
            <img src="{{value.gamePic}}" alt="">
            <p class='bookname'>{{value.gameName}}</p>
        </a>
    </li>
    {{/each}}
</script>
~~~
- 最后：一刷新bring bring 出来了：
![使用模板渲染出来数据.png](https://upload-images.jianshu.io/upload_images/1197386-575b9b6c4d77eb18.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#总结：
使用的知识点：
1. art-template 模板引擎的使用。其性能无论在前端还是后端都有极其出色的表现。

2.循环遍历表达式:无论数组或者对象都可以用 each 进行遍历.
3. jQuery中的Ajax  

        $.ajax({}) 可配置方式发起Ajax请求
- url 接口地址 *
- type 请求方式 *
- timeout 请求超时 *
- dataType 服务器返回格式 *
- data 发送请求数据 *
- beforeSend:function () {} 请求发起前调用 *
- success 成功响应后调用 *
- error 错误响应时调用 *

其它的基本都是这样操作了，小伙伴赶紧动起手来实践吧！

