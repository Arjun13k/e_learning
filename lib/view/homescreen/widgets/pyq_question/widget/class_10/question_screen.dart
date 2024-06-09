import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  String? _localFilePath;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _downloadAndSavePdf();
  }

  Future<void> _downloadAndSavePdf() async {
    try {
      // Get the directory to save the file
      final dir = await getApplicationDocumentsDirectory();
      final filePath = '${dir.path}/temp.pdf';

      // Download the PDF file
      final response = await http.get(Uri.parse(
          "https://firebasestorage.googleapis.com/v0/b/e-learning-98fdb.appspot.com/o/PYQ%20PDF%2FSSLC%2FMaths%2FMATHS%20Question%20Paper%20English%20Medium%20SSLC%20Exam%20March%202019.pdf?alt=media&token=58a3d555-81c4-4184-bed8-dd2eb06cbadb"));

      // Check if the response is successful
      if (response.statusCode == 200) {
        // Write the downloaded bytes to a file
        final file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);

        // Update the state to reflect the local file path and stop loading
        setState(() {
          _localFilePath = filePath;
          _isLoading = false;
        });
      } else {
        // Handle the error case
        print('Error: Failed to download PDF');
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      // Handle any exceptions
      print(e.toString());
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : _localFilePath != null
              ? PDFView(
                  filePath: _localFilePath!,
                  onError: (error) {
                    print(error.toString());
                  },
                  onPageError: (page, error) {
                    print('$page: ${error.toString()}');
                  },
                )
              : Center(child: Text("Error loading PDF")),
    );
  }
}

void main() {
  runApp(MaterialApp(home: QuestionScreen()));
}
