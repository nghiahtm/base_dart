import 'dart:io';

void main() {
  int sum = 0;
  print("moi nhap code: ");
  String code = stdin.readLineSync()!;
  int i = code.codeUnitAt(0) - 64;
  if (i > 9) {
    sum = i % 10 + i ~/ 10;
  } else
    sum = i % 10;
  for (int i = 1; i < code.length; i++) {
    sum += int.parse(code[i]);
  }
  if (sum % code.length == 8)
    print(" ve that");
  else
    print("ve gia");
}
