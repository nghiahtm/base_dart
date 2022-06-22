import 'dart:io';

/*nhập code vé may bay dạng: U1234567891011 để xác minh vé thật giả nếu tổng các chữ số chia 9 dư 8 thì là vé thật
 không thì là vé giả chữ cái U thứ tự 21 trong bảng chứ cái có tổng là 3 */
void main() {
  int sum = 0;
  print("moi nhap code: ");
  String n = stdin.readLineSync()!;
  if (n.length == 4 &&
      n.toUpperCase().codeUnitAt(3) >= 65 &&
      n.toUpperCase().codeUnitAt(3) <= 90) {
    int i = n.toUpperCase().codeUnitAt(3) - 64;
    if (i > 9) {
      sum = i % 10 + i ~/ 10;
    } else
      sum = i % 10;
    for (int i = 0; i < n.length - 1; i++) {
      sum += int.parse(n[i]);
    }
    if (sum % 9 == 8)
      print(" ve that");
    else
      print("ve gia");
  } else
    print("sai dinh dang");
}
