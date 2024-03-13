// day: ngày sinh
// month: 3 kí tự đầu
import 'dart:io';

String astrologicalSignNames(int day, String month) {
  String result = '';

  switch (month) {
    case 'Jan':
      if (day >= 20) {
        result = 'Aquarius';
      } else {
        result = 'Capricorn';
      }
      break;
    case 'Feb':
      if (day >= 19) {
        result = 'Pisces';
      } else {
        result = 'Aquarius';
      }
      break;
    case 'Mar':
      if (day >= 21) {
        result = 'Aries';
      } else {
        result = 'Pisces';
      }
      break;
    case 'Apr':
      if (day >= 21) {
        result = 'Taurus';
      } else {
        result = 'Aries';
      }
      break;
    case 'May':
      if (day >= 21) {
        result = 'Gemini';
      } else {
        result = 'Taurus';
      }
      break;
    case 'Jun':
      if (day >= 22) {
        result = 'Cancer';
      } else {
        result = 'Gemini';
      }
      break;
    case 'Jul':
      if (day >= 23) {
        result = 'Leo';
      } else {
        result = 'Cancer';
      }
      break;
    case 'Aug':
      if (day >= 23) {
        result = 'Virgo';
      } else {
        result = 'Leo';
      }
      break;
    case 'Sep':
      if (day >= 23) {
        result = 'Libra';
      } else {
        result = 'Virgo';
      }
      break;
    case 'Oct':
      if (day >= 23) {
        result = 'Scorpio';
      } else {
        result = 'Libra';
      }
      break;
    case 'Nov':
      if (day >= 22) {
        result = 'Sagittarius';
      } else {
        result = 'Scorpio';
      }
      break;
    case 'Dec':
      if (day >= 22) {
        result = 'Capricorn';
      } else {
        result = 'Sagittarius';
      }
      break;
  }
  return result;
}

void main() {
  stdout.write('Nhập ngày sinh: ');
  int day = int.parse(stdin.readLineSync()!);
  stdout.write('Nhập tháng sinh: ');
  String month = stdin.readLineSync()!;
  String result = astrologicalSignNames(day, month);
  print('Chiêm tinh là: $result');
}
