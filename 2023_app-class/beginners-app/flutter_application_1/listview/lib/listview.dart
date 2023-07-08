// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListViewApp extends StatelessWidget {
  const ListViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('List view'),
        shadowColor: const Color(0xFFFF0303),
        backgroundColor: const Color(0xFF5F36F4),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Card(
                    elevation: 10,
                    child: ListTile(
                      leading: Icon(
                        Icons.verified_user,
                        size: 50,
                        color: Colors.orangeAccent,
                      ),
                      title: Text('LongJohn Edwin Edward'),
                      subtitle: Text('User'),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(
                        Icons.verified_user,
                        size: 50,
                        color: Colors.orangeAccent,
                      ),
                      title: Text('LongJohn Edwin Edward'),
                      subtitle: Text('User'),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(
                        Icons.verified_user,
                        size: 50,
                        color: Colors.orangeAccent,
                      ),
                      title: Text('LongJohn Edwin Edward'),
                      subtitle: Text('User'),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(
                        Icons.verified_user,
                        size: 50,
                        color: Colors.orangeAccent,
                      ),
                      title: Text('LongJohn Edwin Edward'),
                      subtitle: Text('User'),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(
                        Icons.verified_user,
                        size: 50,
                        color: Colors.orangeAccent,
                      ),
                      title: Text('LongJohn Edwin Edward'),
                      subtitle: Text('User'),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisSpacing: 5,
              mainAxisSpacing: 2,
              crossAxisCount: 4,
              childAspectRatio: 4 / 2,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.abc_rounded),
                ),
                CircleAvatar(
                  child: Icon(Icons.usb_rounded),
                ),
                CircleAvatar(
                  child: Icon(Icons.usb_off_outlined),
                ),
                CircleAvatar(child: Icon(Icons.usb_off_sharp)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
