void main() {
  print(triad(1233));
}

String triad(int num) {
  String numStr = num.toString();
  List<String> numAsList = numStr.split("").reversed.toList();
  List<String> triadList = [];
  for (int i = 0; i < numAsList.length; ++i) {
    if (i % 3 == 0) {
      triadList.add(numAsList[i]);
    } else {
      triadList.last = numAsList[i] + triadList.last;
    }
  }
  return "The triad number of $num is : ${triadList.reversed.toList().join(" ")}";
}
