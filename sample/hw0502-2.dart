void main() {
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  print(scores.where((scores) => scores < 91 && scores > 79));
}
