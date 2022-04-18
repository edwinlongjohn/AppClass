import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

int balance = 10000;

int deposit(int amount) {
  balance += amount;
  print('you have deposited $amount and your current balance is $balance');
  return 0;
}

bool withdraw(int amount) {
  int total = amount + 100;
  if (total > balance) {
    print("Insufficient fund");
    return false;
  }
  balance -= total;
  print('You have withdrawn $amount, Your balance is $balance');
  return true;
}

bool getBalance({required int number, int min = 0, int max = 10}) {
  return number <= min && max >= number;
}

void main(List<String> arguments) {
//print('Hello world: ${dart_application_1.calculate()}!');
/**Map<dynamic, dynamic> user = {
    'name': 'John doe',
    'age': 10,
    'course': "app development",
    'active': true,
    "courses": {
      'dart': {
        "map": "for listing items with their names and keys",
        "list": "to give a list of items"
      },
       "flutter":{
         'beauty':"remember me",
       },
    },

  };
  print(user[courses][dart]) */
  final fruits = ['apple', 'pineapple', 'orange', 'mango'];
  final upperCase = fruits.map((fruit) => fruit.toUpperCase());
  print(upperCase);
}
