import 'dart:math';

var rand = Random();
var list = List<int>.generate(
  7,
  (index) => rand.nextInt(100),
);

void genrate() {
  list.sort();
  print(list);
}
