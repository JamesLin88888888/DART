void main(List<String> args) {
  var l1 = [1,12.3,'hi',true, 'hi'];

  //插入insert()
  l1.insert(2, 1);
  print(l1);

  //搜尋元素位置 indexOf()
  print("index: ${l1.indexOf('hi')}");

  //取得子串列 sublist() [1, 12.3, 1, hi, true, hi]
  print("sublist: ${l1.sublist(3)}"); //[hi, true, hi]
  print("sublist: ${l1.sublist(3, 5)}"); //[hi, true]
  var l2 = l1.sublist(3, 5);
  print("l2: $l2");
  print("l1: $l1");

  //指定值方式移除元素 remove()
  print("remove: ${l1.remove(1)}"); //value: 1, return bool
  print("removed l1: $l1"); //[12.3, 1, hi, true, hi]

  //指定位置方式移除元素 removeAt() [12.3, 1, hi, true, hi]
  print("remove: ${l1.removeAt(2)}"); //index: 2, return value
  print("removed l1: $l1"); //[12.3, 1, true, hi]

  //迭代 => 走訪list的元素
  var prices = [200,300,250,280,350];
  List discount = [];
  for(var price in prices){
    print(price * 0.8);
    discount.add(price * 0.8);
  }

  print("discount: $discount");

  //可迭代物件中提供的foreach()走訪串列元素
  prices.forEach((element) {
    print(element);
  });
  prices.forEach((price) { //price == element
    print(price);
  });

  //collect資料型態的物件跟 if, for 搭配使用
  //traditional:
  var isAuthenticate = true;
  var users = ['jane', 'peter', 'max', 'john'];

  if(isAuthenticate){
    users.add('root');
  }

  print(users);

  //dart
  var users_if = ['jane', 'peter', if(isAuthenticate) 'root', 'max', 'john'];
  print(users_if);

  //for 
  var l3 = [1,2,3];
  var l3_s = ['#0', for(var i in l3) '#$i'];
  print(l3_s);

  //List: 存放每個元素value, 因為順序性排列, 隱藏index資料
  //Map: 每個元素以key: value形式存放資料, 沒有順序性的排列
  //紀錄成績:
  var students = ['jane', 'peter', 'max', 'john'];
  var scores = [80, 75, 90, 45];

  //literal 宣告方式
  var students_scores = {'jane':80, 'peter':75, 'max':90, 'john':45};
  print(students_scores);

  //map 取值: map物件[key]
  print("peter: ${students_scores['peter']}");  //75

  //map 重設值: map物件[key] = 新值
  students_scores['peter'] = 66;
  print("peter: ${students_scores['peter']}");  //66

  //添加新元素
  students_scores['apple'] = 60;
  print(students_scores);

  //透過建構子方式宣告map
  var people = new Map();
  people['name'] = 'Tom';
  people['tel'] = '0123456789';
  people['email'] = 'asdgd@jfkgl;khf';
  people['address'] = 'dhgbfksldogopslidfops';
  print(people);

  //取所有的key people = {name: Tom, tel: 0123456789, email: asdgd@jfkgl;khf, address: dhgbfksldogopslidfops}
  print("people keys: ${people.keys}"); //v = (name, tel, email, address)
  print("people keys: ${people.keys.runtimeType}"); //v.runtimeType
  //取所有的value
  print("people values: ${people.values}");

  //map物件.addAll()
  people.addAll({"hobbies": ['運動', '打電動'], "major": 'SW'});
  print(people);
  print(people["hobbies"][1]); //people["hobbies"] = ['運動', '打電動']

}