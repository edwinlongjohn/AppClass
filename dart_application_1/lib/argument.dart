void main(List<String> arguments) {
  var student1 = new Student("edwin longJohn", 20, 'rice');
  
  student1.property();
}

class Student {
  var name;
  var age;
  var food;
  Student(var _name, var _age, var _food) {
    name = _name;
    age = _age;
    food = _food;
  }

  property() {
    print("my name is: $name, am $age old, my favorite food is $food");
  }
}
