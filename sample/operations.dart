import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  //+=,-=
  var a =10;
  var b =5;
  a += b;
  //a = a + b; //15
  print('a: $a');
  a -= b;
  //a = a - b;
  print('a: $a');

  //<<, >>:位位元左移跟右移

  // 0010 , 0010<<1 => 0100, 0010 >> 1 => 0001

  // &: and true & true => true
  // |: or true | false => true

  //允許變數為空
  int? c;
  print('c: $c');
  //??= 判斷變數c 是否為空, 如果c為空: c = 5
  c ??= 5;
  print('c: $c');
  //??= 判斷變數c 是否為空, 如果不為空: c維持原值
  c ??= 10;
  print('c: $c');

  int i;
  //i ??= 5; //error: i不可為空

  var j;  //j變數可為空
  print('j: $j');
  //??= 判斷變數c 是否為空, 如果c為空: c = 5
  j ??= 5;
  print('j: $j');
  //??= 判斷變數c 是否為空, 如果不為空: c維持原值
  c ??= 10;
  print('j: $j');

  //邏輯運算針對bool做運算
  bool b1 = true, b2 = false;
  print('b1 && b2: ${b1 && b2}'); //and, 只有兩者皆為true時, 結果為true, 其他所有狀態皆為false
  print('b1 || b2: ${b1 || b2}'); //or, 只有兩者皆為false時, 結果為false, 其他所有狀態皆為true
  print('!b1: ${!b1}'); //not 反向運算

  //?: => 條件判斷
  //條件描述 ? true條件成立(對應處理) : false條件不成立(對應處理)
  bool rain = false;
  rain ? print("帶傘出門") : print("不用帶傘出門");

  //??: 判斷為空
  var x1 = null;
  var x2 = 20;
  var y = x1 ?? x2; //x1 = x1 ?? x2  => x1 ??= x2
  print("y: $y");

  //?. 判斷為空時, 不直接報錯, 而是回傳null
  String s1;
  //s1.length; //error: s1是null
  
  String? s2;
  //s2.length; //error: s2是null
  print(s2?.length);
  //?.相當於下列式子
  (s2 == null) ?  print(null): print(s2.length);

  //... 代表擴展
  var l1 = [1,2,3];
  var l2 = [4,5,6];
  var l3;
  l3 = [l1, ...l2];
  print('l3: $l3');
  l3 = [...l1, ...l2];
  print('l3: $l3');

  //...?
  List? l4;
  l3 = [...l1, ...?l4, ...l2];
  print('l3: $l3');

  //接收使用者輸入資訊
  stdout.write("加數: ");
  // var a1 = stdin.readLineSync(); //String
  // print('加數a1: $a1');
  // var a2 = stdin.readLineSync();
  // print("被加數a2: $a2");
  dynamic a1 = stdin.readLineSync();  //String
  print('加數a1: $a1');
  dynamic a2 = stdin.readLineSync();
  print("被加數a2: $a2");
  
  a1 = int.parse(a1!); //int, double.parse(a1!)
  print(a1.runtimeType);
  a2 = int.parse(a2!);
  print(a2.runtimeType);

  print('a1+a2=${a1+a2}');

  //取得 main()的參數 args: List<String>
  print('args: $args');
  print(args[0].runtimeType);
  print(jsonDecode( args[3])[0]);

}