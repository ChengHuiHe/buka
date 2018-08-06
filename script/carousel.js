window.onload=function () {
  /**需求:1.鼠标移到对应的序号,图片到对应图片
   * 2.鼠标点击左按钮,切换到前一张,点击右按钮,切换1到下一张
   * 3.自动轮播
   * 4.鼠标移入悬停
   */

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

//1.获取元素
  var carouselBox =  $selector('.carousel'); //大盒子
  var ul = $selector('.carousel .tu');//获取轮播的ul
  var lis = ul.children; //获取每个轮播的li
  var liWidth = lis[0].offsetWidth; // 一个li的宽度
  console.log(liWidth)
  var dotLi = $selectorALL('.dot li'); //小点
  var arrowLeft = $selector('.arrow-left');//左箭头
  var arrowRight = $selector('.arrow-right');//右箭头
  var pic = 0; //计数器必须是一个全局变量
// console.log(carouselBox,ul,lis,dotLi,arrowLeft,arrowRight)
  /*第一步:鼠标移到对应的序号,图片到对应图片*/
//1.遍历所有的序号,给所有的小点序号注册鼠标移入事件
  for(var i = 0; i < dotLi.length; i++) {
    //4.给每一个小点添加一个属性，记录索引
    dotLi[i].index = i;
    dotLi[i].onmouseover = function(){
      //2.排他，所有小点的颜色先清空
      for(var j = 0; j < dotLi.length; j++) {
        dotLi[j].className = "";
      }
      //3.鼠标移入的那个小点颜色变亮
      this.className = "active";
      //5.通过备用的索引值，移动ul到对应的图片
      /*在鼠标移入小圆点的时候，pic的值也要跟着改变*/
      pic = this.index;
      var target = -pic * liWidth;
      animatev0(ul,target);
    }
  }
  /*第二步:鼠标点击左按钮,切换到前一张,点击右按钮,切换1到下一张*/
  //1.点击右按钮,ul往左边移动一张图片的距离
  arrowRight.onclick = moveRight;
  //2.1设置计数,计数器必须是一个全局变量
  // var pic = 0;
  function moveRight(){
    //4.在进行计数之前,先判断pic是否已经到达最后一个了

    if(pic == lis.length-1){
      //让ul瞬间回到0的位置，并且清空pic计数器
      ul.style.left = 0+"px";
      pic=0;
    }
    //2.2 点击一次右按钮,计数++
    pic++;
    //3.调用animate函数,使点击一次按钮,ul移动一次
    var target = -pic * liWidth;
    animatev0(ul,target);
    //5.图片切换,对应的小圆点也发生改变
    for(var i=0; i<dotLi.length; i++){
      dotLi[i].className = "";
    }
    //6.当图片的计数到达最后一张的时候,小圆点的设置要单独设置
    if(pic == lis.length - 1){
      dotLi[0].className = "active";
    }else{
      dotLi[pic].className = "active";
    }
  }
  /*点击左按钮,ul往右边移动一张图片的距离*/
  arrowLeft.onclick = moveLeft;
  function moveLeft(){
    //4.在进行计数之前,先判断pic是否是第一个,如果是第一个,则直接让pic变为第六个
    if(pic == 0){
      pic = lis.length - 1;
      ul.style.left = pic * liWidth * -1 + "px";
    }
    //1. 设置计数,点击一次左按钮,计数--
    pic--;
    //根据索引计算位置
    var target = pic * liWidth * -1 ;
    //2.调用animate函数,使点击一次按钮,ul移动一次
    animatev0(ul,target);
    //5.图片切换,对应的序号也发生改变
    for(var i=0; i<dotLi.length; i++){
      dotLi[i].className = "";
    }
    //6.当图片的计数到达是最后一张的时候,序号的设置要单独设置
    dotLi[pic].className = "active";
  }
}