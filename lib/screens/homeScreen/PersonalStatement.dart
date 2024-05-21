import 'package:flutter/material.dart';

class PersonalStatement extends StatefulWidget {
  const PersonalStatement({super.key});

  @override
  State<PersonalStatement> createState() => _PersonalStatementState();
}

class _PersonalStatementState extends State<PersonalStatement> {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
