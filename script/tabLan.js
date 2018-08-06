//封装通过id获取元素
function $id(id){
  return document.getElementById(id);
}
//封装通过选择器获取某个元素
function  $selector(selector){
  return document.querySelector(selector);
}
//封装通过选择器获取所有元素
function  $selectorALL(selector){
  return document.querySelectorAll(selector);
}

/*tab栏代码开始*/
//1.获取元素
var tabLis = $id("tabUl").children; //鼠标点击的li标题
var tabConUls =  $id("tabContent").children; //获取每一个标题对应的标签页
//2.循环遍历每一个li
for(var m = 0; m < tabLis.length; m++) {
  //3.给每一个li注册点击事件
  //6.给对应的li标题添加一个属性，存贮一个索引值，用来关联对应的标签页
  tabLis[m].index = m;
  tabLis[m].onclick = function(){
    //4.先让所有的li标签的高亮颜色去掉， 即清除类名
    for(var s = 0; s < tabLis.length; s++) {
      tabLis[s].className = "";
    }
    //5.让点击中的那个li标题高亮显示
    this.className = "active";
    //7.先让所有的标签页隐藏
    for(var t = 0; t < tabConUls.length; t++) {
      console.log( tabConUls[t])
      tabConUls[t].className = "";
    }
    //8. 通过第6步存储的索引值，找到对应的标签页，让其显示
    tabConUls[this.index].className = "active";
  }

}