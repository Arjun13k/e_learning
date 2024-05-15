import 'package:e_learning/controller/current_affairs_controller/current_affairs_controller.dart';
import 'package:e_learning/view/homescreen/widgets/drawer_widget/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  void initState() {
    context.read<CurrentAffarirsCOntroller>().getHistoryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bookPro = context.watch<CurrentAffarirsCOntroller>();

    return Scaffold(
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      body: Center(
          child: bookPro.historyModel.isNotEmpty
              ? Column(
                  children: List.generate(
                      bookPro.historyModel.length,
                      (index) =>
                          Text(bookPro.historyModel[index].description ?? "")),
                )
              : Text("noresults")
          //  Text(bookPro.currentRep?.word?.codeUnits.toString() ?? ""),
          // child: ElevatedButton(
          //     onPressed: () async {
          //       final Permissionobj = await Permission.location.status.isGranted;
          //       if (Permissionobj != true) {
          //         await Permission.location.request();
          //       }
          //       if (await Permission.location.status.isPermanentlyDenied) {
          //         openAppSettings();
          //       }
          //     },
          //     child: Text("data")),
          ),
    );
  }
}
