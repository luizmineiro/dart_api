void main() {
  // var future = Future.delayed(
  //   Duration(seconds: 3),
  // );
  // future.then(
  //   (value) => print('4'),
  // );
  print4();
  print('1');
  print('2');
  print('3');
}

Future print4() async {
  await Future.delayed(Duration(seconds: 2));
  print("4");
}
