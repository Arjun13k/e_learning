import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/homescreen/widgets/drawer_widget/drawer_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorConstant.borderColor,
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      appBar: AppBar(
        title: Text(
          "E-LEARNING",
          style: TextStyle(
              color: ColorConstant.titleColor,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 45,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                FirebaseAuth.instance.currentUser?.displayName ?? "",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Basic information",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                          Spacer(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                        ],
                      ),
                      Divider(),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Name", prefixIcon: Icon(Icons.person)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Mobile Number",
                            prefixIcon: Icon(Icons.mobile_friendly)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Email", prefixIcon: Icon(Icons.mail)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Class", prefixIcon: Icon(Icons.group)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Date of Joining",
                            prefixIcon: Icon(Icons.calendar_month),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.calendar_month))),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Material(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Educational Details",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                          Spacer(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                        ],
                      ),
                      Divider(),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "College/University Name",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Mark in College (%)",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "School Name",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Marks in XII (%)",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Marks in X (%)",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Material(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Personal Details",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                          Spacer(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                        ],
                      ),
                      Divider(),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Date of Birth",
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.calendar_month))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Gender",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Nationality",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Blood Group",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Aadhar Number",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Pan Number",
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
