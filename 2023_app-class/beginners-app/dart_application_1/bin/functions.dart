void main(List<String> args) {
  //basic funtions

  void Greetings() {
    print('good afternoon guys');
  }

  Greetings();

  void functionWithParameters(String greeting, String name) {
    print('hello $name $greeting');
  }

  functionWithParameters('good afternoon', 'edwin');

  void functionWithOptionalParameters(String greeting, String name,
      {String? place}) {
    print('hello $name ${place != null ? 'from the $place' : ''}  $greeting');
  }

  functionWithOptionalParameters('good morning', 'beauty');
}
