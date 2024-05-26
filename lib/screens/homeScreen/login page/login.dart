
import 'package:flutter/material.dart';


import '../../../utils/global_var.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

GlobalKey<FormState> formKey4 = GlobalKey();
TextEditingController txtEmailV = TextEditingController();
TextEditingController txtPassword = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: Form(
        key: formKey4,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 100),
                child: Container(
                  height: height * 0.3,
                  width: width * 0.5,
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
                height: 9,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onChanged: (value) {
                    email = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'field is must be required';
                    }
                    else if (!value.contains('@gmail.com')) {
                      return 'Enter @gmail.com';
                    }
                    else if (value.contains(' ')) {
                      return 'Space not allow';
                    }
                    else if (value != value.toLowerCase()) {
                      return 'enter only lowercase letter';
                    }
                    else if (value.length <= 10) {
                      return 'Enter email length 10';
                    }
                    return null;
                  },
                  controller: txtEmailV,
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'E-mail'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: txtPassword,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.fingerprint),
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                ),
              ),
             const  Padding(
                padding:  EdgeInsets.only(left: 200),
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: Color(0xff1a2838),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              GestureDetector(onTap: () {
                bool res = formKey4.currentState!.validate();
                if (res) {
                  Navigator.of(context).pushNamed('/draw');
                }
              },
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  height: height * 0.1 - 20,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff1a2838),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white, letterSpacing: 2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'OR',
                  style: TextStyle(color: Color(0xff1a2838), fontSize: 17),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                height: height * 0.1 - 20,
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
                            color: Color(0xff1a2838), fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
             const  Row(
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
                    TextStyle(color: Color(0xff1a2838), fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
