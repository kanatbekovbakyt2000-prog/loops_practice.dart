import 'dart:io';

void main() {
//#1
  print('№1');
  for (int number = 10; number >= 1; number--) {
    print(number);
  }
  print('Старт!');
//#2
  print('№2');
  print('(введите "stop" для выхода)');
  while (true) {
    String? text = stdin.readLineSync();
    if (text == 'stop') break;
    print(text);
  }
//#3
  print('№3');
  for (int number = 1; number <= 20; number++) {
    if (number % 2 != 0) continue;
    print(number);
  }
//#4
  print('№4');
  String pin = '1234';
  String? inputPin;
  do {
    stdout.write('Пин-код: ');
    inputPin = stdin.readLineSync();
  } while (inputPin != pin);
  print('Доступ разрешен!');
//техническое задание
  print('Банкомат');
  double balance = 1000.0;
  while (true) {
    print('\n1. Баланс | 2. Снять | 3. Пополнить | 4. Выход');
    stdout.write('Выбор: ');

    int? option = int.tryParse(stdin.readLineSync() ?? '');
    if (option == null) {
      print('Ошибка!');
      continue;
    }

    switch (option) {
      case 1:
        print('Баланс: $balance');
        break;
      case 2:
        stdout.write('Сумма: ');
        double? sum = double.tryParse(stdin.readLineSync() ?? '');
        if (sum == null || sum <= 0 || sum > balance) {
          print('Ошибка!');
        } else {
          balance -= sum;
          print('Остаток: $balance');
        }
        break;
      case 3:
        stdout.write('Сумма: ');
        double? sum = double.tryParse(stdin.readLineSync() ?? '');
        if (sum == null || sum <= 0) {
          print('Ошибка!');
        } else {
          balance += sum;
          print('Баланс: $balance');
        }
        break;
      case 4:
        print('Выход');
        return;
      default:
        print('Ошибка!');
    }
  }
}