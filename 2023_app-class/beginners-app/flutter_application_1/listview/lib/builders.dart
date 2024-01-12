import 'package:flutter/material.dart';
import 'package:listview/cards.dart';

class Builders extends StatelessWidget {
  const Builders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builders'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 5,
                    child: ListTile(
                      leading: const Icon(
                        Icons.verified_user,
                        size: 50,
                        color: Colors.orangeAccent,
                      ),
                      title: Text('LongJohn Edwin Edward'),
                      subtitle: Text('User'),
                      trailing: IconButton(
                        onPressed: () {
                          // Callback function when the button is pressed
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) => Cards()),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios_rounded),
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Grid View Builder",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color.fromARGB(255, 70, 67, 67),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return CircleAvatar(
                    child: Icon(Icons.abc_rounded),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
