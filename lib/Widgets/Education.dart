import 'package:pdf/widgets.dart' as pw;

class EducationSection {
  static pw.Widget buildEducation(pw.TextStyle headerStyle,
      pw.TextStyle subtitleStyle, pw.TextStyle normalText) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text('EDUCATION', style: headerStyle),
        pw.SizedBox(height: 10),
        pw.Text('Inmakes Infotech', style: subtitleStyle),
        pw.SizedBox(height: 4),
        pw.Text('Internship Program 2024 June', style: normalText),
        pw.SizedBox(height: 15),
        pw.Text('University College of Engineering Thodupuzha',
            style: subtitleStyle),
        pw.SizedBox(height: 4),
        pw.Text('Bachelor of Technology in Computer Science',
            style: normalText),
        pw.SizedBox(height: 4),
        pw.Text('2020-2024 June, SGPA: 7.1', style: normalText),
        pw.SizedBox(height: 15),
        pw.Text('Govt HSS Nedumkunnam', style: subtitleStyle),
        pw.SizedBox(height: 4),
        pw.Text('Higher Secondary Education, 2016-2018', style: normalText),
        pw.SizedBox(height: 25),
        pw.Text('TECHNICAL SKILLS', style: headerStyle),
        pw.SizedBox(height: 10),
        pw.Bullet(text: 'Flutter'),
        pw.Bullet(text: 'HTML, CSS'),
        pw.Bullet(text: 'Data Science'),
        pw.Bullet(text: 'Firebase'),
        pw.Bullet(text: 'JavaScript'),
        pw.Bullet(text: 'C'),
        pw.Bullet(text: 'SQLite'),
      ],
    );
  }
}
