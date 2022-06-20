import 'dart:io';

/*nhập code vé may bay dạng: U1234567891011 để xác minh vé thật giả nếu tổng các chữ số chia 9 dư 8 thì là vé thật
 không thì là vé giả chữ cái U thứ tự 21 trong bảng chứ cái có tổng là 3 */
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
