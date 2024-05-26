import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_app1/screens/homeScreen/Experience.dart';
// import 'package:resume_app1/screens/homeScreen/Projects.dart';
// import 'package:resume_app1/screens/homeScreen/Reference.dart';
// import 'package:resume_app1/screens/homeScreen/Skills.dart';

import '../ContactInfo.dart';
import '../Education.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(build: (format) => generatePdf()),
    );
  }
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();
  final image = pw.MemoryImage(
    fileImage!.readAsBytesSync(),
  );
  pdf.addPage(
    pw.Page(
      margin: pw.EdgeInsets.zero,
      pageFormat: PdfPageFormat.a4,
      build: (context) => pw.Container(
        height: 900,
        width: double.infinity,
        decoration: pw.BoxDecoration(color: PdfColors.white),
        child: pw.Row(
          children: [
            pw.Stack(
              children: [
                pw.Container(
                  height: 1000,
                  width: 220,
                  decoration: pw.BoxDecoration(
                    color: PdfColor.fromHex('1a2838'),
                  ),
                ),
                pw.Padding(
                  padding: pw.EdgeInsets.only(left: 60, top: 50),
                  child: pw.Container(
                    height: 195,
                    width: 195,
                    decoration: pw.BoxDecoration(
                      color: PdfColor.fromHex('28364b'),
                      shape: pw.BoxShape.circle,
                      border: pw.Border.all(
                        color: PdfColors.white,
                        width: 9,
                      ),
                    ),
                    child: pw.ClipRRect(
                        horizontalRadius: 100,
                        verticalRadius: 100,
                        child: pw.Image(image, fit: pw.BoxFit.cover)),
                  ),
                ),
                pw.Column(
                  children: [
                    pw.SizedBox(
                      height: 350,
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.only(left: 30),
                      child: pw.Text(
                        'About Me',
                        style: pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 27,
                            fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                    pw.SizedBox(
                      height: 10,
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.only(left: 30),
                      child: pw.Text(
                        ' Freelancers and entrepreneurs\n use about and.\n me to grow their audience\n and get more clients.\n',
                        style: pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 12,
                            fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                    pw.SizedBox(
                      height: 40,
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.only(left: 30),
                      child: pw.Text(
                        'Contact',
                        style: pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 27,
                            fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Padding(
                      padding: pw.EdgeInsets.only(left: 30),
                      child: pw.Text('${txtPhone.text}',
                          style: pw.TextStyle(
                              fontSize: 16, color: PdfColors.white)),
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.only(left: 30),
                      child: pw.Row(
                        children: [
                          pw.Text('${txtAddress.text}',
                              style: pw.TextStyle(
                                  fontSize: 17, color: PdfColors.white))
                        ],
                      ),
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.only(left: 30),
                      child: pw.Row(
                        children: [
                          pw.Text('${txtEmail.text}',
                              style: pw.TextStyle(
                                  fontSize: 17, color: PdfColors.white))
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 80),
                    pw.Row(
                      children: [
                        pw.Container(
                          height: 30,
                          width: 220,
                          decoration: pw.BoxDecoration(
                            color: PdfColors.white,
                          ),
                          child: pw.Center(
                            child: pw.Text(
                              'LANGUAGE',
                              style: pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 15),
                    pw.Row(
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 30),
                          child: pw.Text(
                            'English',
                            style: pw.TextStyle(
                                color: PdfColors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 10),
                    pw.Row(
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 30),
                          child: pw.Text(
                            'Hindi',
                            style: pw.TextStyle(
                                color: PdfColors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 5),
                    pw.Row(
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 30),
                          child: pw.Text(
                            'Gujarati',
                            style: pw.TextStyle(
                                color: PdfColors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            pw.Column(
              children: [
                pw.Padding(
                  padding: pw.EdgeInsets.only(right: 80, top: 50),
                  child: pw.Text(
                    '${txtName.text}',
                    style: pw.TextStyle(
                      color: PdfColors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
                pw.Padding(
                  padding: pw.EdgeInsets.only(right: 80),
                  child: pw.Text(
                    'Flutter developer',
                    style: pw.TextStyle(color: PdfColors.black, fontSize: 20),
                  ),
                ),
                pw.SizedBox(height: 100),
                pw.Row(
                  children: [
                    pw.Container(
                      height: 30,
                      width: 260,
                      decoration: pw.BoxDecoration(
                        color: PdfColor.fromHex('1a2838'),
                      ),
                      child: pw.Center(
                        child: pw.Text(
                          'EXPERIENCE',
                          style: pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 30),
                pw.Padding(
                  padding: pw.EdgeInsets.only(right: 120),
                  child: pw.Row(children: [
                    pw.Text(
                      '${txtCompany.text}',
                      style: pw.TextStyle(
                        fontSize: 20,
                        // fontWeight: pw.FontWeight.bold,
                      ),
                    )
                  ]),
                ),
                pw.Padding(
                  padding: pw.EdgeInsets.only(right: 120),
                  child: pw.Row(children: [
                    pw.Text(
                      '${txtPosition.text}',
                      style: pw.TextStyle(
                        fontSize: 20,
                        // fontWeight: pw.FontWeight.bold,
                      ),
                    )
                  ]),
                ),
                pw.Padding(
                  padding: pw.EdgeInsets.only(right: 120),
                  child: pw.Row(
                    children: [
                      pw.Text(
                        '${txtSYear.text}',
                        style: pw.TextStyle(
                          fontSize: 20,
                          // fontWeight: pw.FontWeight.bold,
                        ),
                      ),

                      pw.Text(
                        '${txtEYear.text}',
                        style: pw.TextStyle(
                          fontSize: 20,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                pw.SizedBox(height: 15),
                pw.Padding(
                  padding: pw.EdgeInsets.only(right: 50),
                  child: pw.Row(
                    children: [
                      pw.Container(
                        height: 100,
                        width: 200,
                        color: PdfColors.white,
                        child: pw.Text(
                          'Whether you are aiming for a career change or opting for a better job opportunity',
                          style: pw.TextStyle(fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(height: 30),
                pw.Row(
                  children: [
                    pw.Container(
                      height: 30,
                      width: 260,
                      decoration: pw.BoxDecoration(
                        color: PdfColor.fromHex('1a2838'),
                      ),
                      child: pw.Center(
                        child: pw.Text(
                          'EDUCATION',
                          style: pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                pw.Row(
                  children: List.generate(
                    controllerList.length,
                    (index) => pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.SizedBox(height: 10),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(right: 50),
                          child: pw.Text(
                              '${controllerList[index].txtSchool!.text}',
                              style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black,
                                  fontSize: 17)),
                        ),
                        pw.Text('${controllerList[index].txtCourse!.text}',
                            style: pw.TextStyle(
                                color: PdfColors.black, fontSize: 17)),
                        pw.Text('${controllerList[index].txtGrade!.text}',
                            style: pw.TextStyle(
                                color: PdfColors.black, fontSize: 17)),
                        pw.Text(
                          '${controllerList[index].txtYear!.text}',
                          style: pw.TextStyle(
                              color: PdfColors.black, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
                pw.SizedBox(height: 30),
                pw.Row(
                  children: [
                    pw.Container(
                      height: 30,
                      width: 260,
                      decoration: pw.BoxDecoration(
                        color: PdfColor.fromHex('28364b'),
                      ),
                      child: pw.Center(
                        child: pw.Text(
                          'SKILLS SUMMARY',
                          style: pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 30),
                pw.Padding(
                  padding: pw.EdgeInsets.only(right: 150),
                  child: pw.Text(
                    'CPP,DART',
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );

  return pdf.save();
}
