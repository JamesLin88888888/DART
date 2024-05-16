void main() {
  String a = "test";
  print(a.toUpperCase());
  a = " Test ";
  print(trim(a));
  a = "Test";
  print(padZero(a));
  a = "http://Test";
  String b = "https://Test";
  print(isHttpUrl(a));
  print(isHttpUrl(b));
}

String toUpperCase(String s) {
  return s.toUpperCase();
}

String trim(String s) {
  return s.trim();
}

String padZero(String s) {
  s = '' + s;
  return s.replaceFirst(s, 'O' + s);
}

bool isHttpUrl(String s) {
  return (s.startsWith("http://")) || (s.startsWith("https://"));
}
