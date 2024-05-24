import 'package:flutter/material.dart';

class EducationDetail extends StatefulWidget {
  const EducationDetail({super.key});

  @override
  State<EducationDetail> createState() => _EducationDetailState();
}

class _EducationDetailState extends State<EducationDetail> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      appBar: AppBar(
        backgroundColor: Color(0xff1a2838),
        title: Text(
          'Education',
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
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          height: height * 0.1 - 50,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                            color: Color(0xff1a2838),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '   Education',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    controllerList.removeAt(index - 1);
                                  });
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField('school/University',
                          controllerList[index].txtSchool!),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField(
                          'Course', controllerList[index].txtCourse!),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField(
                          'Grade', controllerList[index].txtGrade!),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField(
                          'Year', controllerList[index].txtYear!),
                    ],
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          setState(() {
            controllerList.add(ControllerModel(
                txtCourse: txtCourse,
                txtGrade: txtPercentage,
                txtYear: txtStart,
                txtSchool: txtSchool));
          });
        },
        child: Container(
            height: 45,
            width: 100,
            decoration: BoxDecoration(
              color: Color(0xff1a2838),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
    );
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
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class ControllerModel {
  TextEditingController? txtSchool;
  TextEditingController? txtCourse;
  TextEditingController? txtGrade;
  TextEditingController? txtYear;

  ControllerModel(
      {this.txtSchool, this.txtCourse, this.txtGrade, this.txtYear});
}

List<ControllerModel> controllerList = [
  ControllerModel(
      txtSchool: txtSchool,
      txtYear: txtStart,
      txtGrade: txtPercentage,
      txtCourse: txtCourse)
];

TextEditingController txtSchool = TextEditingController();
TextEditingController txtCourse = TextEditingController();
TextEditingController txtPercentage = TextEditingController();
TextEditingController txtStart = TextEditingController();
