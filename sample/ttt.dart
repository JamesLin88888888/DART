void main() {
  List<List<int>> matrix = [
    [3, 1],
    [1, 2],
    [2, 3],
    [4, 0],
    [3, 2],
  ];

  matrix.sortedBy((List<int> row) {
    // 首先按第一个元素排序，如果第一个元素相同，则按第二个元素排序
    return [row[0], row[1]];
  });

  print(matrix); // [[1, 2], [2, 3], [3, 1], [3, 2], [4, 0]]
}
