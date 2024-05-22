import 'package:flutter/material.dart';

class PersonalStatement extends StatefulWidget {
  const PersonalStatement({super.key});

  @override
  State<PersonalStatement> createState() => _PersonalStatementState();
}

class _PersonalStatementState extends State<PersonalStatement> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      body: Form(
        child : Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height:height*0.1-20,
              width: width*1,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '1-2 sentences highligting your key experiance',
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 190),
              child: const Text(
                'Delete section',
                style: TextStyle(color: Colors.blueGrey, fontSize: 17),
              ),
            ),
            Divider(
              thickness: 1,
              indent: 30,
              endIndent: 210,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Container(
                height: height * 0.1 - 30,
                width: width * 0.3,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
