import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
TextEditingController txtEmailV = TextEditingController();
TextEditingController txtPassword = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 100),
            child: Container(
              height: height*0.3,
              width: width*0.5,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/1.jpg'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 120),
            child: Text(
              'Welcome Back',
              style: TextStyle(
                  color: Color(0xff1a2838),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Text(
              'Make it work,make it right,make it fast.',
              style: TextStyle(color: Colors.black, fontSize: 13),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: txtEmailV,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  labelText: 'E-mail'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: txtPassword,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text(
              'Forgot password?',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            height: height*0.1-50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff1a2838),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'LOGIN',
                style: TextStyle(color: Colors.white, letterSpacing: 2),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'OR',
              style: TextStyle(color: Color(0xff272727), fontSize: 17),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff272727), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/img/gg.png'),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Sign-In with Google',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text(
                  'Don`t have an Account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'SignUp',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
