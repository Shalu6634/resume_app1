import 'package:flutter/material.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      appBar: AppBar(
        backgroundColor: Color(0xff1a2838),
        title: Text(
          'Projects',
          style: TextStyle(color: Colors.white),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.edit,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              controllerList.length,
              (index) => Container(
                // padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                height: height * 0.5 - 58,
                width: width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    buildTextFormField(
                        'project Title', controllerList[index].txtProTitle!),
                    SizedBox(
                      height: 10,
                    ),
                    buildTextFormField(
                        'Details', controllerList[index].txtProDetail!),
                    SizedBox(
                      height: 10,
                    ),
                    buildTextFormField(
                        'Start Year', controllerList[index].txtStartYear!),
                    SizedBox(
                      height: 10,
                    ),
                    buildTextFormField(
                        'End Year', controllerList[index].txtEndYear!),
                  ],

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
                  padding: const EdgeInsets.only(left: 40,top: 20),
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

          ],
        ),
      ),

    );
  }
}

Widget buildTextFormField(String label, TextEditingController controller) {
  return SizedBox(
    width: 340,
    child: TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black),
        enabledBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
      ),
    ),
  );
}

class ControllerModel {
  TextEditingController? txtProTitle;
  TextEditingController? txtProDetail;
  TextEditingController? txtStartYear;
  TextEditingController? txtEndYear;

  ControllerModel(
      {this.txtEndYear,
      this.txtProDetail,
      this.txtProTitle,
      this.txtStartYear});
}

List<ControllerModel> controllerList = [
  ControllerModel(
      txtEndYear: txtEndYear,
      txtProDetail: txtProDetail,
      txtStartYear: txtStartYear,
      txtProTitle: txtProTitle)
];

TextEditingController txtProTitle = TextEditingController();
TextEditingController txtProDetail = TextEditingController();
TextEditingController txtStartYear = TextEditingController();
TextEditingController txtEndYear = TextEditingController();
