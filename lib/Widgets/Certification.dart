import 'package:pdf/widgets.dart' as pw;

class CertificationSection {
  static pw.Widget buildCertifications(pw.TextStyle headerStyle) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text('CERTIFICATIONS', style: headerStyle),
        pw.SizedBox(height: 15),
        pw.Bullet(text: 'Udemy Certification of Completion in Flutter & Dart'),
        pw.SizedBox(height: 8),
        pw.Bullet(text: 'Swayam NPTEL Certification in Programming in Java'),
        pw.SizedBox(height: 8),
        pw.Bullet(
            text: 'Data Analytics Certificate from Cisco Networking Academy'),
        pw.SizedBox(height: 8),
        pw.Bullet(text: 'Work Readiness Programme - ASAP'),
        pw.SizedBox(height: 8),
        pw.Bullet(
            text: 'Introduction to Data Science - Cisco Networking Academy'),
      ],
    );
  }
}
