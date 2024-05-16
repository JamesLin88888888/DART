import 'dart:core';

void main() {
  DateTime(2023, 6, 5).describe();
  DateTime(2023, 6, 8).describe();
  DateTime(2023, 6, 9).describe();
  DateTime(2023, 6, 12).describe();
}

extension DescribeDate on DateTime {
  void describe() {
    DateTime now = DateTime.now();
    Duration diff = this.difference(DateTime(now.year, now.month, now.day));
    String result = switch (diff) {
      Duration(inDays: -1) => '昨天',
      Duration(inDays: 0) => '今天',
      Duration(inDays: 1) => '明天',
      Duration(inDays: int d) => d < 0 ? '${d.abs()} 天前' : '$d 天后',
    };
    print("$year/$month/$day 是 $result");
  }
}
