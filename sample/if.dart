void main(List<String> args) {
  var num = -5;
  //if
  if(num > 0){
    print("This is an positive number");
  }

  var weather = "rain";
  var isRain = true;
  if(weather == "rain"){
    print("帶傘出門!");
  }

  if(isRain){
    print("帶傘出門!");
  }

  //if ... else ...
  num = 10;
  if((num%2) == 0){
    print("num is even.");
  }else{
    print("num is odd.");
  }

  if(isRain){
    print("帶傘出門!");
  }else{
    print("不帶傘出門!");
  }

  //(條件判斷式) ? True區塊 : false區塊 => if(條件判斷式){True區塊}else{false區塊}
  ((num%2) == 0) ?  print("num is even.") : print("num is odd.");
  (isRain) ? print("帶傘出門!") : print("不帶傘出門!");

  //if...else if ... else if ... ... else
  if(num > 0){
    print("This is an positive number");
  }else if(num < 0){
    print("This is an negtive number");
  }else{
    print("This is zero");
  }

  var milk_brand = "光泉";
  if(milk_brand == "光泉"){
    print("買2瓶");
  }else if(milk_brand == "味泉"){
    print("買1瓶");
  }else if(milk_brand == "好朋友"){
    print("買1瓶");
  }else{
    print("不買了");
  }

  //巢狀的if條件式
  /*
    if(){
      if(){
        if(){
          ...
        }
      }
    }else if(){

    }
  */
  var tasted = "蘋果口味";

  if(milk_brand == "光泉"){
    if(tasted == "蘋果口味"){
      print("買2瓶");
    }else if(tasted == "巧克力口味"){
      print("買1瓶");
    }else{
      print("不買了");
    }
  }

  //switch...case => if(){...}else if(){...}...else{...}
  var grade = "A";

  switch(grade){
    case "A": {print("super great!");}
      break;
    case "B": {print("vary good!");}
      break;
    case "C": {print("good!");}
      break;
    case "D": {print("not good");}
      break;
    default:
  }

  if(milk_brand == "光泉"){
    print("買2瓶");
  }else if(milk_brand == "味泉"){
    print("買1瓶");
  }else if(milk_brand == "好朋友"){
    print("買1瓶");
  }else{
    print("不買了");
  }

  switch(milk_brand){
    case "光泉": print("買2瓶");
      break;
    case "味泉": print("買1瓶");
      break;
    case "好朋友": print("買1瓶");
      break;
    default: print("不買了");
  }

  //switch 空敘述貫穿(沒有下斷點break)
  var color = 'Orange';
  switch(color){
    case "Green":
      print('color: Green');
      break;
    case "Orange":
    case "Red":
      print('color: Red');
      break;
    default:
      print('color: None');
  }
  milk_brand = "好朋友";
  switch(milk_brand){
    case "光泉": print("買2瓶");
      break;
    case "味泉":
    case "好朋友": print("買1瓶");
      break;
    default: print("不買了");
  }

  //switch case 空敘述貫穿: 標籤
  color = 'Green';
  switch(color){
    case "Green":
      print('color: Green');
      continue red;
    case "Orange":
    red:
    case "Red":
      print('color: Red');
      break;
    default:
      print('color: None');
  }

  milk_brand = "光泉";
  switch(milk_brand){
    case "光泉": print("買2瓶");
      continue shopping;
    case "味泉":
    shopping:
    case "好朋友": print("買1瓶");
      break;
    default: print("不買了");
  }

  //loop迴圈
  //for(初始值; 結束條件; 間隔值){...}
  //階層運算 n!, 3! = 3*2*1 = 6
  var n = 5;
  var factorial = 1;
  // i-- => i = i-1;
  for(var i = n; i >= 1; i--){
    print('$factorial * $i = ${factorial*i}');
    factorial *= i;  //factorial = factorial * i;    
  }
  print(factorial); //5*4*3*2*1 = 120
}