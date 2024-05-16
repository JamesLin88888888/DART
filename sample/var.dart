void main(List<String> args) {
  //變數第一種宣告方式
  String catName = "iot";
  //變數第二種宣告方式
  var t = "hi world";
  //t = 1000; //error: int -> string

  var b = 12;
  //b = 12.2; //error: double -> int

  //變數第三種宣告方式
  Object x;
  x = "Hello Object"; //object
  x = 1000; //object

  //變數第四種宣告方式
  dynamic y;
  y = "Hello dynamic"; //y: string
  y = 1000; //y: int

  //null: 空 : 一種資料型態
  y = null; //y : null
  //x = null; //x: object error: null -> object

  //數值資料型態
  int a = 64; //int
  var c = 64; //int

  double d = 12.3; //double
  var d1 = 45.6789; //double

  d = 1;
  print(d); //1.0

  //String: '', ""
  String s1 = 'hihi';
  var s2 = "hello aiot!";
  //''', """: 多行定義的字串
  var s3 = '''asdf
            qwe123
            yhnjujm
            ''';
  var s4 = """asdf
qwe123
yhnjujm
""";
  print(s3);
  print(s4);
  //r'': 以原始raw字元方式解讀
  var s5 = 'hi \niot';
  print(s5);
  var s6 = r'hi \niot';
  print(s6);

  //print(): 將()中參數的內容列印出來在終端機上
  //若在字串中表示變數: $變數名稱
  print('s6: $s6');
  print("s6: $s6");

  //在dart中,所有 = 右邊的值, 都是一種物件, 現實環境中的電腦, 桌子, 椅子
  //程式中的 String, int, double,...'hihi', 123,...
  //如何執行物件的動作,  車子加速: 車子踩油門
  //切割字串: string.切割()
  //String.split(指定切割符號): 切割 => ['str1', 'str2', ...]
  String str1 = "Welcome, to Tiibai.com";
  print("New String List: ${str1.split(',')}");
  print("New String List: ${str1.split(' ')}");
  print("New String List: ${str1.split('o')}");

  //String.substring(): 子字串
  //hello: 1:h, 2: e ...字串是一個有順序性的排列
  //程式中定義位置的順序從0開始: hello: 0:h, 1: e...
  //當只傳入一個參數時, 執行後的子字串會是傳入參數作為起始到原始字串的結束
  print(str1.substring(12)); //Tiibai.com
  print(str1.substring(12, 18)); //Tiibai, 結束位置參數, 不包含在子字串內

  //string <-> numeric
  // 1: int, '1': String
  //string -> int
  var one = int.parse('1'); //資料轉換
  print(one);
  print(one == 1);
  print(one == '1');

  //string -> double
  var one_float = double.parse('1.0'); //資料轉換
  print(one_float);
  print(one_float == 1.0);
  print(one_float == '1.0');

  //int -> String
  var str2 = 1.toString();
  print(str2 == 1);
  print(str2 == '1');

  //double -> String
  var str3 = 3.1415926.toStringAsFixed(2);
  print(str3);
  print(str3 == 3.14);
  print(str3 == '3.14');

  //check data type
  //方法一
  print("str3 == '3.14': ${str3 == '3.14'}");
  //方法二
  print("str3.runtimeType: ${str3.runtimeType}");
  //方法三
  print("str3 is String: ${str3 is String}");

  //Object vs dynamic
  Object o = "hello";
  dynamic o1 = "hello";

  print("o.runtimeType:${o.runtimeType}"); //String
  print("o1.runtimeType:${o1.runtimeType}"); //String

  //print(o.substring()); //error: o is Object
  print(o1.substring(2)); //o1 is String

  //Boolean: true, false
  bool b3 = true;
  var b4 = false;

  print("b3: $b3");
  print("b4: $b4");

  //nan & infinity
  var div = 0/0;
  print(div.runtimeType);

  var inif = 1.0/0.0;
  print(inif.runtimeType);

  //List data type, 符號: []
  //第一種類: 可變長度 
  var l1 = [11,2,3]; //int
  List l2 = [10, 'hi', false, [0,12,3]]; //int, string, bool

  //第二種類: 固定長度
  var l3 = List.filled(3, 0);
  print("l3: $l3");

  //取值: 變數名稱[index]
  print("l1[0]: ${l1[0]}");

  //修改list元素值: 變數名稱[index] = 新的值
  l1[0] = 1;
  print("修正後的 l1[0]: ${l1[0]}");

  //指定list元素的資料型態為固定的
  //<>泛型 generic type: 指定資料型態
  List <String> l4 = ['a', 'hi', 'apple'];

  //增加新元素 add 一次只能添加一個元素
  print("l1: $l1");
  l1.add(4);
  print("新增後 l1: $l1");

  //增加指定位置的新元素 insert()
  l1.insert(2, 5);
  print("新增指定位置後 l1: $l1");

  //notes 1.list 初始值限定將來可添加元素的資料型態
  var l5 = [1,2,3];
  print("l5: $l5");
  l5.add(4);
  print("新增後 l5: $l5");
  // l5.add(1.23); //error: float->int
  // print("新增後 l5: $l5");

  List l6 = [10, 'hi', false, [0,12,3]];//多維度
  print("l6: $l6");
  l6.add(1.23);
  print("新增後 l6: $l6");
  

  //note 2. 多維度list
  var l7 = [10, 'hi', false];
  print("l7: $l7");
  l7.add([0,12,3]);
  print("新增後 l7: $l7");
   
  var l8 = [1,2,3];
  print("l8: $l8");
  // l8.add([0,12,3]); //error: list -> int
  // print("新增後 l8: $l8");

  var l9 = [];
  l9.addAll([10, 20, 30]); //[10, 'hi', false]
  print("l9: $l9");
  l9.add([0,12,3]);
  print("新增後 l9: $l9");

  List<dynamic> l10 = [10, 'hi', false];
  print("l10: $l10");
}