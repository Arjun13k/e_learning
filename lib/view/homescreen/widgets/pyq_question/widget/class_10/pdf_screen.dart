import 'package:flutter/material.dart';

class PdfSCreen extends StatefulWidget {
  const PdfSCreen({super.key});

  @override
  State<PdfSCreen> createState() => _PdfSCreenState();
}

class _PdfSCreenState extends State<PdfSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
            itemBuilder: (context, index) => Container(),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: 5));
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// class MyPdfPageView extends StatefulWidget {
//   @override
//   _MyPdfPageViewState createState() => _MyPdfPageViewState();
// }

// class _MyPdfPageViewState extends State<MyPdfPageView> {
//   bool isControlPressed = false;
//   bool isMetaPressed = false;

//   @override
//   Widget build(BuildContext context) {
//     return RawKeyboardListener(
//       focusNode: FocusNode(),
//       onKey: (RawKeyEvent event) {
//         setState(() {
//           isControlPressed = event.isControlPressed;
//           isMetaPressed = event.isMetaPressed;
//         });
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('PDF Viewer'),
//         ),
//         body: Center(
//           child: SfPdfViewer.network(
//               "https://firebasestorage.googleapis.com/v0/b/e-learning-98fdb.appspot.com/o/PYQ%20PDF%2FSSLC%2FMaths%2FMATHS%20Question%20Paper%20English%20Medium%20SSLC%20Exam%20March%202019.pdf?alt=media&token=58a3d555-81c4-4184-bed8-dd2eb06cbadb"),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyPdfPageView(),
//   ));
// }
