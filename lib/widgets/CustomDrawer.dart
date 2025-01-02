import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:prayer/constant.dart';
import 'package:prayer/styles.dart';
import 'package:prayer/views/Qibla%20Direction.dart';

class Customdrawer extends StatefulWidget {
  const Customdrawer({super.key});

  @override
  State<Customdrawer> createState() => _CustomdrawerState();
}

class _CustomdrawerState extends State<Customdrawer> {

  bool hasPermission = true;
  Future getPermission() async {
    if (await Permission.location.serviceStatus.isEnabled) {
      var status = await Permission.location.status;
      if (status.isGranted) {
        hasPermission = true;
      } else {
        Permission.location.request().then((value) {
          setState(() {
            hasPermission = (value == PermissionStatus.granted);
          });
        });
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
     backgroundColor: background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.close)),

         GestureDetector(
           onTap: (){
                 if (hasPermission) {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const Qibla()),
                   );
                 } else {
                   ScaffoldMessenger.of(context).showSnackBar(
                     const SnackBar(content: Text('Permission required')),
                   );
                 }
           },
           child: const ListTile(
            title: Text('Qibla Direction',style: Styles.bold18),
            trailing: Icon(Icons.explore),
                   ),
         ),
          const ListTile(
            title: Text('Prayer schedule',style: Styles.bold18),
            trailing: Icon(Icons.calendar_today_rounded),
          ),
          const ListTile(
            title: Text('Settings',style: Styles.bold18),
            trailing: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
