import 'package:pdf/widgets.dart' as pw;

class ProjectsExperienceSection {
  static pw.Widget buildProjectsExperience(
      pw.TextStyle headerStyle,
      pw.TextStyle subtitleStyle,
      pw.TextStyle technoText,
      pw.TextStyle normalText) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text('PROJECTS EXPERIENCE', style: headerStyle),
        pw.SizedBox(height: 10),
        pw.Text('LIFESAVER HEALTH MONITORING APP', style: subtitleStyle),
        pw.SizedBox(height: 7),
        pw.Text('Technology Used: Flutter, Firebase, Firestore, Arduino',
            style: technoText),
        pw.SizedBox(height: 7),
        pw.Text(
          'Led a team of developers to create a smartwatch app that monitors vitals and detects emergencies. Integrated machine learning using Keras for forecasting hemorrhage symptoms.',
          style: normalText,
        ),
        pw.SizedBox(height: 10),
        pw.Text('NOTES APP', style: subtitleStyle),
        pw.SizedBox(height: 7),
        pw.Text('Technology Used: Flutter, SQLite', style: technoText),
        pw.SizedBox(height: 7),
        pw.Text(
          'I developed a fully functional note-taking app using Flutter,which includes features to add, delete, and update notes. To ensure efficient local storage and retrieval of notes, I utilized SQLite for data persistence in Flutter. ',
          style: normalText,
        ),
        pw.SizedBox(height: 10),
        pw.Text('NEWS BLOG APP', style: subtitleStyle),
        pw.SizedBox(height: 7),
        pw.Text('Technology Used: Flutter, Firebase, Firestore, REST API',
            style: technoText),
        pw.SizedBox(height: 7),
        pw.Text(
          'Developed a news blog app using Flutter with News API integration and for backend services Firebase is used.It will allow the features of Multi language selection,payment gateway,profile management etc.',
          style: normalText,
        ),
      ],
    );
  }
}
