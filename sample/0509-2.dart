<<<<<<< HEAD
var numbers = [1, 3, 6, 9, 12, 15, 18, 21];
void main() {
  var dbn;
  dbn = numbers.map((n) => n * 2).toList();
  print("map語法答案 $dbn");

  List lst = dbn;
  var wn = lst.where((n) => ((n > 5)));
  print("where語法答案 $wn");

  wn.forEach((n) {
    var m = n * n;
    print("forEach語法答案 $m");
  });

  var sum = 0;
  wn.forEach((n) {
    sum = n + sum;
  });

  print("reduce語法答案 $sum");
}
=======
var numbers = [1, 3, 6, 9, 12, 15, 18, 21];
void main() {
  var dbn;
  dbn = numbers.map((n) => n * 2).toList();
  print("map語法答案 $dbn");

  List lst = dbn;
  var wn = lst.where((n) => ((n > 5)));
  print("where語法答案 $wn");

  wn.forEach((n) {
    var m = n * n;
    print("forEach語法答案 $m");
  });

  var sum = 0;
  wn.forEach((n) {
    sum = n + sum;
  });

  print("reduce語法答案 $sum");
}
>>>>>>> c075f8edecb2ce7b032626ba3d846a0b7e8824d2
