void main(List<String> arguments) {
  String anything = 'anything';

  List<String> fruits = ['Apple', 'pineapple', 'orange', 'pawpaw'];
  print(fruits);
  print(fruits[0]);

  Map<String, dynamic> users = {
    'name': 'edwin edward longjohn',
    'gender': 'male',
    'age': 25,
  };
  print(users);

  List<Map<String, dynamic>> user = [
    {
      'name': 'edwin',
      'DOB': '27-sept-1998',
      'Gender': 'male',
      'age': 10,
      'address': {
        'city': 'port-harcourt $anything',
        'state': 'rivers state',
        'location': {
          'name': 'ust main gate',
          'exact': 'no. 7 nnokam street mile 3 diobu ph',
        }
      }
    },
    {
      'name': 'paul',
      'DOB': 'unkwown',
      'Gender': 'male',
    },
  ];

  print(user[0]['address']['city'] +
      user[0]['address']['state'] +   
      user[0]['address']['location']['name'] +
      user[0]['address']['location']['exact']);
}
