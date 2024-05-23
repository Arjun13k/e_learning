import 'package:e_learning/controller/pyq_pdf_controller/pyq_pdf.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Class_10 extends StatefulWidget {
  const Class_10({super.key});

  @override
  State<Class_10> createState() => _Class_10State();
}

class _Class_10State extends State<Class_10> {
  @override
  Widget build(BuildContext context) {
    final class10Pro = Provider.of<PyqPdfScreenController>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 15),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 200,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15),
            itemCount: class10Pro.listOfSubject.length,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 10)
                  ]),
              child: Center(
                  child: Text(
                class10Pro.listOfSubject[index].toString().toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
