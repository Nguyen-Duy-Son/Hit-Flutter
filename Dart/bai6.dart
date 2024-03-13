import 'dart:ffi';
import 'dart:math';

bool checkNto(int n) {
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

int countNumber(int a) {
  int dem = 0;
  while (a != 0) {
    int x = a % 10;
    a = a ~/ 10;
    dem++;
  }
  return dem;
}

String cachDoc(int a) {
  List<String> ds1 = [
    "không",
    "một",
    "hai",
    "ba",
    "bốn",
    "năm",
    "sáu",
    "bảy",
    "tám",
    "chín"
  ];
  List<String> ds2 = [
    "mười",
    "hai mươi",
    "ba mươi",
    "bốn mươi",
    "năm mươi",
    "sáu mươi",
    "bảy mươi",
    "tám mươi",
    "chín mươi"
  ];
  List<String> ds3 = [
    "một trăm",
    "hai trăm",
    "ba trăm",
    "bốn trăm",
    "năm trăm",
    "sáu trăm",
    "bảy trăm",
    "tám trăm",
    "chín trăm"
  ];
  String? result = "";
  if (countNumber(a) == 1) {
    result = ds1[a];
  } else if (countNumber(a) == 2) {
    int phanNguyen = a ~/ 10;
    int phanDu = a % 10;
    if (phanDu == 0) {
      if (phanNguyen != 1)
        result = ds2[phanNguyen - 1];
      else
        result = ds2[0];
    } else if (phanDu == 1 && a != 11) {
      result = ds2[phanNguyen - 1] + " " + "mốt";
    } else
      result = ds2[phanNguyen - 1] + " " + ds1[phanDu];
  } else {
    int tmp = a ~/ 10;
    int phanDu = a % 10;
    int phanGiua = tmp % 10;
    int phanNguyen = tmp ~/ 10;
    if (phanGiua == 0) {
      if (phanDu == 0) {
        result = ds3[phanNguyen - 1];
      } else {
        result = ds3[phanNguyen - 1] + " linh " + ds1[phanDu];
      }
    } else if (phanGiua == 1) {
      result = ds3[phanNguyen - 1] + " " + ds2[0] + " " + ds1[phanDu];
    } else if (phanDu == 1) {
      result = ds3[phanNguyen - 1] + " " + ds2[phanGiua - 1] + " mốt";
    } else {
      if (phanDu == 0) {
        result = ds3[phanNguyen - 1] + " " + ds2[phanGiua - 1];
      } else {
        result =
            ds3[phanNguyen - 1] + " " + ds2[phanGiua - 1] + " " + ds1[phanDu];
      }
    }
  }
  return result;
}

void main() {
  List<int> listA = List.filled(99, 0);
  Random rd = Random();
  for (int i = 0; i < 99; i++) {
    listA[i] = rd.nextInt(1000);
  }
  print("Danh sách các số trong listA là:");
  for (int value in listA) {
    print(value);
  }
  Set<int> setB = {};
  for (int value in listA) {
    setB.add(value);
  }
  print("Các số trong SetB là:");
  for (int value in setB) {
    print(value);
  }
  List<int> listC = [];
  for (int value in setB) {
    if (checkNto(value)) {
      listC.add(value);
    }
  }
  print("Các số trong ListC là:");
  for (int value in listC) {
    print(value);
  }
  var mapD = Map<int, String>();
  for (int value in listC) {
    mapD[value] = cachDoc(value);
  }
  print("Các số trong mapD là:");
  for (var key in mapD.keys) {
    var value = mapD[key];
    print('Key: $key, Value: $value');
  }
}
