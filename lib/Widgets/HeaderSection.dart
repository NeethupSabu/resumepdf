import 'package:pdf/widgets.dart' as pw;

class HeaderSection {
  static pw.Widget buildHeader(
      pw.TextStyle titleStyle, pw.TextStyle normalText) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: [
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text('NEETHU P SABU', style: titleStyle),
            pw.SizedBox(height: 4),
            pw.Text(
              'FLUTTER DEVELOPER',
              style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            ),
          ],
        ),
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.end,
          children: [
            pw.Text('https://github.com/NeethuPSabu', style: normalText),
            pw.SizedBox(height: 4),
            pw.Text('7736628329', style: normalText),
            pw.SizedBox(height: 4),
            pw.Text('neethupsabu2018@gmail.com', style: normalText),
            pw.SizedBox(height: 4),
            pw.Text('Purayidathil H, Manthuruthy PO, Kottayam',
                style: normalText),
          ],
        ),
      ],
    );
  }
}
