import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff153448),

      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: height * 0.2 - 20,
                    width: width * 8,
                    color: Color(0xff1a2838),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/img/cv.png'),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 160),
                          child: Text(
                            'Sign-in',
                            style: TextStyle(fontSize: 15, color: Colors.teal),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 100, left: 20),
                    child: Row(
                      children: [
                        Text(
                          'CV Engineer  ' ,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(width: 120),
                        Text(
                          'PRO',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/info');
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.call,size: 25,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'Contact Info',
                    style: TextStyle(color: Colors.black,fontSize: 18),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/person');
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.person_pin_outlined,size: 25,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'Personal Statement',
                    style: TextStyle(color: Colors.black,fontSize: 18),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/Career');
                },
                child:const  ListTile(
                  leading: Icon(
                    Icons.shopping_bag_outlined,size: 25,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'Career',
                    style: TextStyle(color: Colors.black,fontSize: 18),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/Education');
                },
                child:const  ListTile(
                  leading: Icon(
                    Icons.cast_for_education_outlined,size: 25,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'Education',
                    style: TextStyle(color: Colors.black,fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
