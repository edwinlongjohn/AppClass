void main(List<String> arguments) {
  var edwin = new Male('edwin', 24);
  edwin.greeting();
  print(edwin.getCurrentAge);
  edwin.setAge = 20;
  print(edwin.getCurrentAge);
}

//class
class Male {
  //fields
  String? name;
  int? age;
  //constructor
  Male(String newName, int myAge) {
    name = newName;
    age = myAge;
  }

  int? get newAge {
    return age;
  }

  int get getCurrentAge {
    var currentAge = age ?? 0 + 30;
    return currentAge;
  }

  set setAge(int _age) {
    age = _age;
  }

  //method or function
  void greeting() {
    print('Good afternoon $name and my age is $age');
  }
}
