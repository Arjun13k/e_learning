import 'package:e_learning/controller/current_affairs_controller/current_affairs_controller.dart';
import 'package:e_learning/controller/feedback_controller/feedback_controller.dart';
import 'package:e_learning/controller/home_controller/home_controller.dart';
import 'package:e_learning/controller/login_controller/login_controller.dart';
import 'package:e_learning/controller/pyq_pdf_controller/pyq_pdf.dart';
import 'package:e_learning/controller/registration_controller/registration_controller.dart';
import 'package:e_learning/controller/theme_controller/theme_controller.dart';
import 'package:e_learning/firebase_options.dart';
import 'package:e_learning/view/splashscreen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
      create: (context) => CustomThemeController(), child: LearningApp()));
}

class LearningApp extends StatelessWidget {
  const LearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RegistrationScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => CurrentAffarirsCOntroller(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => PyqPdfScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => FeedbackController(),
        )
      ],
      child: MaterialApp(
        theme: context.watch<CustomThemeController>().selectedThemeData,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
