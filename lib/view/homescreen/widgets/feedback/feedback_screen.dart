import 'package:flutter/material.dart';

class FeedBackAlign extends StatefulWidget {
  const FeedBackAlign({super.key});

  @override
  State<FeedBackAlign> createState() => _FeedBackAlignState();
}

class _FeedBackAlignState extends State<FeedBackAlign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  hintText:
                      "Please take a moment to share your thoughts and experiences with us, as it helps us to improve our services and better meet your needs  ",
                  hintMaxLines: 4,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("SUBMIT"))
          ],
        ),
      ),
    );
  }
}
