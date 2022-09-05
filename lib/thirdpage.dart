import 'dart:math';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/fourthpage.dart';
import 'package:shayari/baseclass.dart';

class thirdpage extends StatefulWidget {
  List<String> shayrilist;
  int index;

  thirdpage(this.shayrilist, this.index);

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  PageController pageController = PageController();

  Gradient randomcolor =
      LinearGradient(colors: [Colors.teal.shade300, Colors.teal.shade300]);

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.teal.shade50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          barrierColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return GridView.builder(
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      randomcolor = baseclass.randomlist[index];
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      gradient: baseclass.randomlist[index],
                                    ),
                                  ),
                                );
                              },
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 5,
                                      crossAxisSpacing: 5),
                              itemCount: 10,
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.zoom_in_map)),
                  Text("${widget.index + 1}/${widget.shayrilist.length}",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          randomcolor = LinearGradient(colors: [
                            Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                            Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          ], transform: GradientRotation(10));
                        });
                      },
                      icon: Icon(Icons.cached))
                ],
              ),
            ),
            Expanded(
                child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  widget.index = value;
                });
              },
              controller: pageController,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(gradient: randomcolor),
                  child: Text(
                    widget.shayrilist[widget.index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                );
              },
              itemCount: widget.shayrilist.length,
            )),
            Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        FlutterClipboard.copy('hello flutter friends').then(
                            (value) => Fluttertoast.showToast(
                                msg: "Copied",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                                fontSize: 16.0));
                      },
                      icon: Icon(Icons.copy)),
                  IconButton(
                      onPressed: () {
                        if (widget.index > 0) {
                          setState(() {
                            widget.index--;
                            pageController.jumpToPage(widget.index);
                          });
                        }
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return fourthpage(
                                  widget.shayrilist, widget.index);
                            },
                          ),
                        );
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        if (widget.index < widget.shayrilist.length - 1) {
                          setState(
                            () {
                              widget.index++;
                              pageController.jumpToPage(widget.index);
                            },
                          );
                        }
                      },
                      icon: Icon(Icons.arrow_forward_ios)),
                  IconButton(
                      onPressed: () {
                        Share.share(widget.shayrilist[widget.index]);
                      },
                      icon: Icon(Icons.share))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
