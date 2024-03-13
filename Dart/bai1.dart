import 'dart:io';

bool checkNamNhuan(int a) {
  if (a % 400 == 0) {
    return true;
  }
  if (a % 4 == 0 && a % 100 != 0) {
    return true;
  }
  return false;
}

void main() {
  print("Nhập năm cần kiểm tra:");
  String? year = stdin.readLineSync();
  int? convertedYear = int.tryParse(year!);

  if (convertedYear != null) {
    if (checkNamNhuan(convertedYear)) {
      print("Đây là năm nhuận!");
    } else {
      print("Không phải năm nhuận!");
    }
  } else {
    print("Năm không hợp lệ!");
  }
}
