import 'package:flutter/material.dart';

class ReferenceScreen extends StatefulWidget {
  const ReferenceScreen({super.key});

  @override
  State<ReferenceScreen> createState() => _ReferenceScreenState();
}

class _ReferenceScreenState extends State<ReferenceScreen> {
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
              controllerList.length,
                  (index) => Container(
                // padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  height: height * 0.5 +20,
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
                          height: height * 0.1-50 ,
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
                      buildTextFormField('Reference name',
                          controllerList[index].txtRefName!),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField(
                          'Jop title', controllerList[index].txtTitle!),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField(
                          'Company name', controllerList[index].txtComName!),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField(
                          'Email', controllerList[index].txtEmail2!),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextFormField(
                          'Phone number', controllerList[index].txtPhone2!),
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
               txtComName: txtComName,
            txtEmail2: txtEmail2,
            txtPhone2: txtPhone2,
            txtRefName: txtRefName,
            txtTitle: txtTitle));
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
  TextEditingController? txtComName;
  TextEditingController? txtEmail2;
  TextEditingController? txtRefName;
  TextEditingController? txtTitle;
  TextEditingController? txtPhone2 ;

  ControllerModel(
      {this.txtPhone2, this.txtTitle, this.txtRefName, this.txtEmail2,this.txtComName});
}

List<ControllerModel> controllerList = [
  ControllerModel(
      txtComName: txtComName,
      txtEmail2: txtEmail2,
      txtRefName: txtRefName,
      txtTitle: txtTitle,
      txtPhone2 : txtPhone2
  )
];

TextEditingController txtRefName = TextEditingController();
TextEditingController txtTitle = TextEditingController();
TextEditingController txtComName = TextEditingController();
TextEditingController txtEmail2 = TextEditingController();
TextEditingController txtPhone2 = TextEditingController();

