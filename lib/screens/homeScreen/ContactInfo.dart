import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

TextEditingController txtEmail = TextEditingController();
TextEditingController txtName = TextEditingController();
TextEditingController txtPhone = TextEditingController();
TextEditingController txtAddress = TextEditingController();

GlobalKey<FormState> formKey = GlobalKey();

ImagePicker imagePicker = ImagePicker();
File? fileImage;

class _ContactInfoState extends State<ContactInfo> {
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
            )),
        centerTitle: true,
        title: Text(
          'Contact Info',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: height * 0.2,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          shape: BoxShape.circle,
                          image: (fileImage != null)
                              ? DecorationImage(
                                  fit: BoxFit.cover, image: FileImage(fileImage!))
                              : const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/id/1451587807/vector/user-profile-icon-vector-avatar-or-person-icon-profile-picture-portrait-symbol-vector.jpg?s=612x612&w=0&k=20&c=yDJ4ITX1cHMh25Lt1vI1zBn2cAKKAlByHBvPJ8gEiIg=')),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 210),
                    child: Container(
                      height: height * 0.1 - 12,
                      width: width * 0.1 - 12,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                      child: Center(
                        child: GestureDetector(
                          onTap: () async {
                            XFile? xfileImage = await imagePicker.pickImage(
                                source: ImageSource.gallery);
                            setState(() {
                              fileImage = File(xfileImage!.path);
                            });
                          },
                          child: Icon(
                            Icons.add,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: width * 0.9,
                height: height * 0.1 - 30,
                child: TextFormField(
                  controller: txtName,
                  decoration: const InputDecoration(
                    labelText: 'Full name',
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: width * 0.9,
                height: height * 0.1 - 30,
                child: TextFormField(
                  controller: txtEmail,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: width * 0.9,
                height: height * 0.1 - 30,
                child: TextFormField(
                  controller: txtPhone,
                  decoration: const InputDecoration(
                    labelText: 'Phone',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: width * 0.9,
                height: height * 0.1 - 30,
                child: TextFormField(
                  controller: txtAddress,
                  decoration: const InputDecoration(
                    labelText: 'address',
                    focusedBorder: OutlineInputBorder(
                    ),
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
