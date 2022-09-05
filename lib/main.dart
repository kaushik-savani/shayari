import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shayari/firstpage.dart';

void main() {
  runApp(MaterialApp(
    home: demo(),
    debugShowCheckedModeBanner: false,
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(
              "logo/img_2.png",
            ))),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    gonext();
  }

  gonext() async {
    var status = await Permission.storage.status;

    if (status.isDenied) {
      Map<Permission, PermissionStatus> statuses =
          await [Permission.storage].request();
    }
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return firstpage();
      },
    ));
  }
}
