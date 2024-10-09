import 'package:pdf/widgets.dart' as pw;

class CareerObjectiveSection {
  static pw.Widget buildCareerObjective(
      pw.TextStyle headerStyle, pw.TextStyle normalText) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text('CAREER OBJECTIVE', style: headerStyle),
        pw.SizedBox(height: 8),
        pw.Text(
          'I am Neethu P Sabu, a passionate Flutter enthusiast with hands-on experience in developing responsive and user-friendly mobile applications. I have completed several projects using Flutter and Firebase, and I am skilled in state management. I am eager to leverage my expertise in Flutter and front-end technologies to contribute to innovative projects and grow within a dynamic development environment.',
          style: normalText,
        ),
      ],
    );
  }
}
