//获取鼠标滑入的所有的a标签
var shouAs = document.querySelectorAll(".shouA");
//获取所有的菜单栏
var shouUls = document.querySelectorAll(".shouUl");

//1.遍历所有的a标签
for(var y = 0; y < shouAs.length; y++) {
  //2.给所有的a标签注册鼠标移入事件
  shouAs[y].onmouseover = function () {
    //3. 先让所有的菜单栏的高度变为0
    for(var i = 0; i < shouUls.length; i++) {
      animatev5(shouUls[i],{"height":0});
    }
    //4. 因为菜单栏是a标签的下一个兄弟元素， 所以鼠标鼠标滑入的那个a标签用this表示，对应的那个菜单栏，用this.nextElementSibling表示
    animatev5(this.nextElementSibling,{"height":120});
  }
}