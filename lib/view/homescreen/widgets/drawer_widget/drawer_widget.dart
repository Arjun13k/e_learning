import 'package:e_learning/controller/theme_controller/theme_controller.dart';
import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/loginscreen/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: ColorConstant.borderColor),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(""),
            ),
            accountName: Text(
              FirebaseAuth.instance.currentUser?.displayName ?? "",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            accountEmail: Text(FirebaseAuth.instance.currentUser?.email ?? "")),
        ListTile(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.error)),
          title: Text("About"),
        ),
        ListTile(
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.watch_later_outlined)),
          title: Text("Recently watched"),
        ),
        ListTile(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.credit_card)),
          title: Text("Payment"),
        ),
        ListTile(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          title: Text("Setting"),
        ),
        ListTile(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.feedback)),
          title: Text("Feedback"),
        ),
        ListTile(
          leading: Switch(
            value: isDark,
            onChanged: (value) {
              isDark = value;
              Provider.of<CustomThemeController>(context, listen: false)
                  .themeSelection();
              setState(() {});
              // context.watch<CustomThemeController>().themeSelection();
            },
          ),
          title: Text("Theme"),
        ),
        ListTile(
          leading: IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              icon: Icon(Icons.logout)),
          title: Text("Log out"),
        )
      ],
    );
  }
}
