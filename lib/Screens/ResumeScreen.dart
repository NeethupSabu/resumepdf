import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resumepdf_app/Widgets/Certification.dart';
import 'package:resumepdf_app/Widgets/Education.dart';
import 'package:resumepdf_app/Widgets/Experience.dart';
import 'package:resumepdf_app/Widgets/HeaderSection.dart';
import 'package:resumepdf_app/Widgets/Objective.dart';

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber[900],
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text('My Resume'),
        centerTitle: true,
      ),
      body: PdfPreview(
        build: (format) => generateResumePdf(),
      ),
    );
  }

  Future<Uint8List> generateResumePdf() async {
    final pdf = pw.Document();

    final titleStyle = pw.TextStyle(
      fontSize: 24,
      fontWeight: pw.FontWeight.bold,
      color: PdfColors.lightBlueAccent,
    );
    final subtitleStyle =
        pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold);
    final normalText = pw.TextStyle(fontSize: 14);
    final technoText =
        pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold);
    final headerStyle = pw.TextStyle(
        fontSize: 16,
        fontWeight: pw.FontWeight.bold,
        color: PdfColors.lightBlueAccent700,
        decoration: pw.TextDecoration.underline);

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.only(top: 40, left: 20, right: 20),
        build: (context) => [
          HeaderSection.buildHeader(titleStyle, normalText),
          pw.SizedBox(height: 10),
          pw.Divider(height: 20, thickness: 5),
          pw.SizedBox(height: 10),
          CareerObjectiveSection.buildCareerObjective(headerStyle, normalText),
          pw.SizedBox(height: 20),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Expanded(
                child: EducationSection.buildEducation(
                    headerStyle, subtitleStyle, normalText),
              ),
              pw.SizedBox(width: 20),
              pw.Expanded(
                child: ProjectsExperienceSection.buildProjectsExperience(
                    headerStyle, subtitleStyle, technoText, normalText),
              ),
            ],
          ),
          pw.SizedBox(height: 30),
          CertificationSection.buildCertifications(headerStyle),
        ],
      ),
    );

    return pdf.save();
  }
}
