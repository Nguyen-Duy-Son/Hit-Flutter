import 'dart:io';

void pascalTriangle(int n) {
  List<List<int>> arr = List.generate(n, (_) => List<int>.filled(n + 1, 0));
  for (int i = 0; i < n; i++) {
    // arr[i][i] = 1;
    arr[i][0] = 1;
  }
  for (int i = 1; i < n; i++) {
    for (int j = 1; j <= i; j++) {
      arr[i][j] = arr[i - 1][j - 1] + arr[i - 1][j];
    }
  }
  for (int i = 0; i < n; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('${arr[i][j]} ');
    }
    print("\n");
  }
}

void main() {
  print("Nhập số:");
  String? number = stdin.readLineSync();
  int? convertedNumber = int.tryParse(number!);
  if (convertedNumber != null) pascalTriangle(convertedNumber);
}
