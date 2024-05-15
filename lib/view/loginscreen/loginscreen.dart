import 'package:e_learning/controller/login_controller/login_controller.dart';
import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/bottomscreen/bottonsheet.dart';
import 'package:e_learning/view/registrationscreen/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final loginobj = context.watch<LoginScreenController>();
    var formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "E-LEARNING",
            style: TextStyle(
                color: ColorConstant.titleColor,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          SizedBox(
            height: 15,
          ),
          Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text("SIGN IN",
                        style: TextStyle(
                            color: ColorConstant.borderColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: loginobj.emailController,
                      decoration: InputDecoration(
                          hintText: "Name",
                          labelText: "Name",
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(17),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: loginobj.passController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(17),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text("Forgot Password",
                                style: TextStyle(
                                    color: ColorConstant.borderColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19)))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    loginobj.isLoged
                        ? CircularProgressIndicator()
                        : GestureDetector(
                            onTap: () async {
                              if (formkey.currentState!.validate()) {
                                if (loginobj.emailController.text.isNotEmpty &&
                                    loginobj.passController.text.isNotEmpty) {
                                  context
                                      .read<LoginScreenController>()
                                      .login(context: context)
                                      .then((value) {
                                    if (value == true) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text("Login Sucess")));
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                BottomSheetNavigator(),
                                          ),
                                          (route) => false);
                                    }
                                  });
                                }
                              }
                              loginobj.emailController.clear();
                              loginobj.passController.clear();
                            },
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  color: ColorConstant.splashScreencolor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: Text("LOGIN",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: ColorConstant.whiteColor,
                                      ))),
                            ),
                          ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have account ?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegistrationScreen(),
                                  ));
                            },
                            child: Text("Register",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: ColorConstant.borderColor,
                                )))
                      ],
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
