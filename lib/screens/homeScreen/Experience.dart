import 'package:flutter/material.dart';

class ExperienceDetail extends StatefulWidget {
  const ExperienceDetail({super.key});

  @override
  State<ExperienceDetail> createState() => _ExperienceDetailState();
}

class _ExperienceDetailState extends State<ExperienceDetail> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      appBar: AppBar(
        backgroundColor: Color(0xff1a2838),
        title: Text(
          'Experience',
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
              controllerList1.length,
              (index) => Container(
                  // padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  height: height * 0.5+20,
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
                                '   Experience',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    controllerList1.removeAt(index - 1);
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
                      buildTextFormField('Company name',
                          controllerList1[index].txtCompany!),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField(
                          'Job title', controllerList1[index].txtPosition!),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField(
                          'Start date', controllerList1[index].txtSYear!),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField(
                          'End year', controllerList1[index].txtEYear!),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField(
                          'Details', controllerList1[index].txtDetail!),
                    ],
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          setState(() {
            controllerList1.add(ControllerModel(
                txtCompany: txtCompany,
                txtDetail: txtDetail,
                txtEYear: txtEYear,
                txtPosition: txtPosition,
                txtSYear: txtSYear));
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

class ControllerModel {
  TextEditingController? txtCompany;
  TextEditingController? txtPosition;
  TextEditingController? txtSYear;
  TextEditingController? txtEYear;
  TextEditingController? txtDetail;

  ControllerModel(
      {this.txtCompany,
      this.txtEYear,
      this.txtPosition,
      this.txtSYear,
      this.txtDetail});
}

List<ControllerModel> controllerList1 = [
  ControllerModel(
    txtCompany: txtCompany,
    txtPosition: txtPosition,
    txtSYear: txtSYear,
    txtEYear: txtEYear,
    txtDetail: txtDetail,
  )
];

TextEditingController txtCompany = TextEditingController();
TextEditingController txtPosition = TextEditingController();
TextEditingController txtSYear = TextEditingController();
TextEditingController txtEYear = TextEditingController();
TextEditingController txtDetail = TextEditingController();
