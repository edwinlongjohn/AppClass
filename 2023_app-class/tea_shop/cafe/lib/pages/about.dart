import 'package:cafe/pages/home_page.dart';
import 'package:cafe/pages/shop_page.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(color: Color.fromARGB(255, 219, 218, 218)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.brown[300],
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 247, 204, 188),
                          blurRadius: 20.0,
                          spreadRadius: 5.0,
                        ),
                      ]),
                  child: Image.asset(
                    'lib/images/cup.png',
                    width: 250,
                    height: 250,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text.rich(TextSpan(
                    text: 'W',
                    style: TextStyle(
                      color: Color.fromARGB(255, 247, 242, 242),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text:
                            'elcome to LeeTea, where the delicate art of tea meets a haven for enthusiasts. Nestled in the heart of Jos, LeeTea is your cozy escape into the world of exceptional teas.',
                        style: TextStyle(
                            color: Color.fromARGB(255, 247, 242, 242),
                            fontSize: 16,
                            height: 1.5,
                            fontWeight: FontWeight.normal),
                      ),
                    ])),
                const Text(
                  textAlign: TextAlign.justify,
                  'At LeeTea, we curate a selection of premium teas from around the globe, each blend handpicked for its unique flavors and rich traditions. Our intimate space is designed for you to unwind and explore the diverse world of tea.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 247, 242, 242),
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
                const Text(
                  textAlign: TextAlign.justify,
                  'Step inside, breathe in the soothing aromas, and let our knowledgeable staff guide you through our thoughtfully crafted menu. From the subtle elegance of green teas to the bold richness of black blends, LeeTea offers a journey for every tea lover.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 247, 242, 242),
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
                const Text(
                  textAlign: TextAlign.justify,
                  'With a commitment to quality and authenticity, LeeTea brings you the finest leaves from renowned tea estates. Join us in this celebration of tea, where every cup tells a story of craftsmanship and passion.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 247, 242, 242),
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.brown,
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => HomePage())));
                      },
                      child: const Text(
                        "Explore LeeTea",
                        style: TextStyle(
                          color: Color.fromARGB(255, 247, 242, 242),
                          fontSize: 18,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //       minimumSize: Size.fromHeight(60)),
                //   child: Text(
                //     "Explore LeeTea",
                //     style: TextStyle(
                //       color: Color.fromARGB(255, 247, 242, 242),
                //       fontSize: 18,
                //       height: 1.5,
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
