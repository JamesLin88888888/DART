enum EnumOfYear{
    Jan, // =>0
    Feb,  //=>1
    Mar,
    Apr,
    May,
    Jun,
    Jul,
    Aug,
    Sep,
    Oct,
    Nov,
    Dec //=>11
}

class Test{
  int? i; //? => 允許變數值可為空null
  Function? fun;

  say(){
    if(i != null){
      i! * 8; //! => 向編譯器保證此變數是有值, 值不為空null
    }

    if(fun != null){
      fun!();
    }
  }
}
void main(List<String> args) {
  Map student = {'name': 'Tom', 'age': 23};
  print(student);

  //map.remove("key"):刪除指定元素
  var e_removed = student.remove('age');
  print(e_removed); //23
  print(student);

  //map.clear(): 清空
  student.clear();
  print(student);

  //foreach
  List l1 = [1,2,3,4];
  /*
    function formate:
    y = f(x,y,z) = ax+by+cz...
    return_datatype function_name(參數列表: p1, p2...){
      處理過程...
      return result
    }
  */
  l1.forEach(
    (element) { //element: l1裡面的元素
      print(element);
    }
  );

  student = {'name': 'Tom', 'age': 23};
  student.forEach(
    (key, value) { //key:'name','age', value:'Tom', 23
      print("${key}: ${value}");
    }
  );

  print(EnumOfYear.values);
  EnumOfYear.values.forEach((element) {
    print('value: $element, index: ${element.index}');
  });


  //fianl, const 相同點
  final a = 10;
  print(a);
  //a = 20; //a的值是不可被變更的
  final int b = 20; //formal

  const String s1 = 'hi';
  const s2 = 'hi';
  //s1 = "hello"; //s1的值是不可被變更的

  //const, final 相異點=>時間
  //const: 必須是在編譯時期給定初始值
  final t1 = DateTime.now();
  print(t1);

  // const t2 = DateTime.now(); //error: t2在編譯時期沒有值
  // print(t2);

  //null
  int i = 10;
  int j; //j的值是不可為空
  i*8;
  //j*8; //在使用變數時, 會檢查此變數有沒有值
  int? k; //k的值是可為空
  //print("j: ${j}"); //error: j的值是不可為空
  print("k: ${k}");

  //set
  //Literal
  var s3 = {1,2,'hi', true, 1};
  print(s3);

  //建構子
  var s4 = new Set();
  s4.add(12.3);
  s4.addAll(s3);
  print(s4); //{12.3, 1, 2, hi, true}

  //list轉set
  var s5 = new Set.from([1,2,'hi', true, 1]); //{1, 2, hi, true}
  print(s5);

  //set 取值
  var x = s5.elementAt(3);
  print("x: $x"); //true

  //set 尋找元素
  print(s5.contains("hi")); //true
  print(s5.contains(5));  //false

  //set 轉 list
  List l2 = s5.toList() ;
  print("l2: $l2");

  //set 聯集union(),交集intersection()，差集
   var m = {10,11,12,13,14,15};
   var n = {12,18,29,43};
   var o = {2,5,10,12,32};

   print("m 聯集 n: ${m.union(n)}"); // {10, 11, 12, 13, 14, 15, 18, 29, 43}
   print("m 交集 n: ${m.intersection(n)}"); //{12}
   print("n 差集 o: ${n.difference(o)}"); //{18, 29, 43}

   //四則運算
   int x1 = 10, x2 = 20;
   print("x1 + x2 = ${x1 + x2}");
   print("x1 - x2 = ${x1 - x2}");
   print("x1 * x2 = ${x1 * x2}");
   print("x1 / x2 = ${x1 / x2}"); //decimal, float
   print("x1 % x2 = ${x1 % x2}"); //取餘數
   print("x1 ~/ x2 = ${x1 ~/ x2}");  //取商

   //++(prefix, postfix)
   //postfix: 先取值後運算
   var x3 = 30;
   print("x3++ = ${x3++}"); //++ : x3 = x3 + 1; --: x3 = x3 -1
   print("x3: $x3");

   //prefix: 先運算後取值
   var x4 = 30;
   print("--x4 = ${--x4}"); //++ : x4 = x4 + 1, -- : x4 = x4 - 1
   print("x4: $x4");
}