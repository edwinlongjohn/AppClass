import 'package:flutter/material.dart';
import 'package:list_view_builder/component/circle.dart';
import 'package:list_view_builder/component/square.dart';
import 'package:list_view_builder/pages/grid_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List _posts = ['post1', 'post2', 'post3'];
  final List _stories = ['post1', 'post2', 'post3', 'post4', 'post5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 223, 223),
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          );
        }),
      ),
      //drawer
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            const SizedBox(height: 100),
            Center(
              child: ListTile(
                leading: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyGrid()),
                      );
                    },
                    child: const Icon(
                      Icons.grading_sharp,
                      color: Colors.white,
                    )),
                title: const Text(
                  'Grid Page',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _stories.length,
              itemBuilder: (BuildContext context, int index) {
                return MyCircle(child: _stories[index]);
              },
            ),
          ),
          //posts
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (BuildContext context, int index) {
                return MySquare(child: _posts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
