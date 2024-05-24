import 'package:flutter/material.dart';

class PersonalStatement extends StatefulWidget {
  const PersonalStatement({super.key});

  @override
  State<PersonalStatement> createState() => _PersonalStatementState();
}
TextEditingController txtSkill= TextEditingController();

class _PersonalStatementState extends State<PersonalStatement> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1a2838),
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

        child: Column(

          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: height * 0.1 - 20,
              width: width * 1,
              child: TextFormField(
                controller: txtSkill,
                decoration: InputDecoration(
                  labelText: '1-2 sentences highligting your key experiance',
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Delete section',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 17),
                ),


                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    height: height * 0.1 - 30,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2,
              endIndent: 200,
              indent: 30,
            ),
          ],
        ),
      ),
    );
  }
}
