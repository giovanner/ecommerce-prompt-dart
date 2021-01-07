extension RangeExtend on int {
  List<int> rangeTo(int other) {
    var listReturn = <int>[];
    for (var i = 0; i < other; i++) {
      listReturn.add(this + i);
    }
    return listReturn;
  }
}

void main() {
  for (var i in 1.rangeTo(5)) {
    print(i);
  }
}
