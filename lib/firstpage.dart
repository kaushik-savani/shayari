import 'package:flutter/material.dart';
import 'package:shayari/baseclass.dart';
import 'package:shayari/secondpage.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0x9921B86C),
        title: Text(
          "Shayari",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        color: Colors.grey.shade200,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return secondpage(index);
                    },
                  ));
                },
                leading: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(
                            baseclass().images[index],
                          ),
                          fit: BoxFit.fill)),
                ),
                title: Text(baseclass().category[index]),
              ),
            );
          },
          itemCount: baseclass().category.length,
        ),
      ),
    );
  }
}
