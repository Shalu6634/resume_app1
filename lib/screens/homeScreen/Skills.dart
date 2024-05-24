import 'package:flutter/material.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          SizedBox(width: 10,),
          Icon(
            Icons.edit,
            color: Colors.white,
          ),
          SizedBox(width: 20,),

        ],
        title: Text(
          'Key-Skills',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xff1a2838),
        elevation: 8,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            txtControllerList.length,
            (index) => ListTile(
              title: TextField(
                controller: txtControllerList[index],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      TextEditingController txtController =
                          TextEditingController();
                      setState(() {
                        txtControllerList.add(txtController);
                      });
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Color(0xff1a2838),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          txtControllerList.removeAt(index - 1);
                        });
                      },
                      icon: Icon(
                        Icons.close,
                        color: Color(0xff1a2838),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            skills = '';
            for (int i = 0; i < txtControllerList.length; i++) {
              skills = '$skills' + '  ' + '${txtControllerList[i].text}';
            }
            // print(skills);
            Navigator.of(context).pushNamed('/show');
          });
        },
        child: Icon(
          Icons.shortcut,
          color: Colors.green,
        ),
      ),
    );
  }
}

String skills = '';
TextEditingController txtController = TextEditingController();
List<TextEditingController> txtControllerList = [txtController];
