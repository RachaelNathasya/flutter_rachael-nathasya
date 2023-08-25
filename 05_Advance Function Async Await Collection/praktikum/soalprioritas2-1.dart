void main() {
  List<List<int>> outerList = [
    [1, 10],
    [2, 20],
    [3, 30],
    [4, 40],
  ];

  Map<int, List<int>> resultMap = Map.fromIterable(outerList,
      key: (element) => element[0], value: (element) => element);

  print(resultMap);
}
