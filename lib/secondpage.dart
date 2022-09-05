import 'package:flutter/material.dart';
import 'package:shayari/baseclass.dart';
import 'package:shayari/thirdpage.dart';

class secondpage extends StatefulWidget {
  int index;

  secondpage(this.index);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  List<String> shayrilist = [];

  @override
  void initState() {
    super.initState();
    if (widget.index == 0) {
      shayrilist = baseclass.birthday;
    } else if (widget.index == 1) {
      shayrilist = baseclass.breakup;
    } else if (widget.index == 2) {
      shayrilist = baseclass.funny;
    } else if (widget.index == 3) {
      shayrilist = baseclass.life;
    } else if (widget.index == 4) {
      shayrilist = baseclass.love;
    } else if (widget.index == 5) {
      shayrilist = baseclass.motivational;
    } else if (widget.index == 6) {
      shayrilist = baseclass.romantic;
    } else if (widget.index == 7) {
      shayrilist = baseclass.sad;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(baseclass().category[widget.index]),
        backgroundColor: Color(0x9921B86C),
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
                      return thirdpage(shayrilist, index);
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
                            baseclass().images[widget.index],
                          ),
                          fit: BoxFit.fill)),
                ),
                title: Text(
                  shayrilist[index],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          },
          itemCount: shayrilist.length,
        ),
      ),
    );
  }
}
