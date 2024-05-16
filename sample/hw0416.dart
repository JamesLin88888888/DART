void main(List<String> args) {
  String s1='Aqua Man';
  String s2='Cat Woman';
  
  var s3=s1.split(' ');      // [Aqua, Man]
  var s4=s2.split(' ');      // [Cat, Woman]
  var s5,s6,s7,s8,s9,sa,sb,sc;
  s5= s3[0].substring(0,2);  //Aq
  s6= s3[0].substring(2);    //ua
  s7= s3[1].substring(0,1);  //M
  s8= s3[1].substring(1);    //an
  
  s9= s4[0].substring(0,1);  //C
  sa= s4[0].substring(1);    //at
  sb= s4[1].substring(0,2);  //Wo
  sc= s4[1].substring(2);    //man
  
  print(s5+sa+' '+s7+sc);
  print(s9+s6+' '+sb+s8);
  print('-------------------');
  print(s3[0]+' '+s4[0]);
  print(s3[1]+' '+s4[1]);
  print('-------------------');
  print(s3[0]+' '+s4[0]+' '+s3[1]+' '+s4[1]);
  
  //print(s5);
}