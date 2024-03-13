import 'dart:io';

int countNumber(int a) {
  int dem = 0;
  while (a != 0) {
    int x = a % 10;
    a = a ~/ 10;
    dem++;
  }
  return dem;
}

void main() {
  print("Nhập số cần tìm:");
  String? number = stdin.readLineSync();
  int? convertedNumber = int.tryParse(number!);
  if (convertedNumber != null) {
    print("Số chữ số của số đã nhập:");
    print(countNumber(convertedNumber));
  }
}
