import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/baseclass.dart';

class fourthpage extends StatefulWidget {
  List<String> shayrilist;
  int index;

  fourthpage(this.shayrilist, this.index);

  @override
  State<fourthpage> createState() => _fourthpageState();
}

class _fourthpageState extends State<fourthpage> {
  List<String> emojilist = [
    "💐💐😉😊💐💐",
    "→🦋☽💫☽🦋→",
    "🌷🌻🌷🌻🌷🌻🌷🌻",
    "✨♥✨",
    "💘💓💏🎉💑💝💗",
    "❣😔❣",
    "•🙂💑🙂•💟⛎•😋",
    "😘💃*☆*💃😘",
    "❤ ❤ ❤ ❤ ❤ ❤ ❤",
    "≛≛”*•”*•≛≛",
    "☺️☺️☺️☺️☺️☺️☺️☺️️",
    "😆😆😘😘😎😎😆😆",
    "😘😘😘😍😍😍",
    "❥━💜❥❣❦⚫❦❣❥💙━❥❤",
    "❥❥════❥❥════❥❥════❥❥",
  ];

  Color textcolor = Colors.white;
  String myemoji = "";
  double textsize = 14;
  TextAlign textformat = TextAlign.center;
  String folderpath = "";
  String ffamily = "";
  GlobalKey _globalKey = GlobalKey();
  List<String> fonts = [
    "family1",
    "family2",
    "family3",
    "family4",
    "family5",
    "family6"
  ];
  Gradient randomcolor = LinearGradient(
    colors: [Colors.teal.shade300, Colors.teal.shade300],
  );

  @override
  void initState() {
    super.initState();
    createfolder();
  }

  createfolder() async {
    String path = "/storage/emulated/0/Download/Shayari 2022";
    Directory directory = Directory(path);

    bool status = await directory.exists();
    if (status) {
      print("Already exit");
    } else {
      await directory.create();
      print("created");
    }
    folderpath = directory.path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        child: Column(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: ListView(
                shrinkWrap: true,
                children: [
                  RepaintBoundary(
                    key: _globalKey,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: randomcolor,
                      ),
                      padding: EdgeInsets.all(30),
                      alignment: Alignment.center,
                      child: Text(
                        "${myemoji}\n${widget.shayrilist[widget.index]}\n${myemoji}",
                        textAlign: textformat,
                        style: TextStyle(
                            color: textcolor,
                            fontSize: textsize,
                            fontFamily: ffamily),
                      ),
                    ),
                  )
                ],
              ),
            )),
            Container(
              height: 140,
              child: Column(children: [
                row1(),
                Row(
                  children: [allbtn(0), allbtn(1), allbtn(2)],
                ),
                Row(
                  children: [allbtn(3), allbtn(4), allbtn(5)],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }

  row1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: .8),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: IconButton(
              onPressed: () {
                setState(() {
                  textformat = TextAlign.center;
                });
              },
              icon: Icon(Icons.format_align_center)),
        ),
        Container(
          margin: EdgeInsets.all(5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: .8),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: IconButton(
              onPressed: () {
                setState(() {
                  textformat = TextAlign.justify;
                });
              },
              icon: Icon(Icons.format_align_justify)),
        ),
        Container(
            margin: EdgeInsets.all(5),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: .8),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: IconButton(
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
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5),
                        itemCount: 10,
                      );
                    },
                  );
                },
                icon: Icon(Icons.zoom_in_map))),
        Container(
            margin: EdgeInsets.all(5),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: .8),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    randomcolor = LinearGradient(colors: [
                      Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                    ], transform: GradientRotation(10));
                  });
                },
                icon: Icon(Icons.cached))),
        Container(
          margin: EdgeInsets.all(5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: .7),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: IconButton(
              onPressed: () {
                setState(() {
                  textformat = TextAlign.left;
                });
              },
              icon: Icon(Icons.format_align_left)),
        ),
        Container(
          margin: EdgeInsets.all(5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: .7),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: IconButton(
              onPressed: () {
                setState(() {
                  textformat = TextAlign.right;
                });
              },
              icon: Icon(Icons.format_align_right)),
        )
      ],
    );
  }

  allbtn(int i) {
    List<String> btnname = [
      "Background",
      "Text Color",
      "Share",
      "Font",
      "Emoji",
      "Text Size"
    ];
    return Expanded(
      child: InkWell(
        onTap: () {
          if (i == 0) {
            showModalBottomSheet(
                isDismissible: false,
                barrierColor: Colors.transparent,
                builder: (context) {
                  return Container(
                    height: 120,
                    margin: EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: GridView.builder(
                            itemCount: baseclass.basecolor.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    randomcolor = LinearGradient(colors: [
                                      baseclass.basecolor[index],
                                      baseclass.basecolor[index]
                                    ]);
                                  });
                                },
                                child: Card(
                                  color: baseclass.basecolor[index],
                                ),
                              );
                            },
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 8,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close)),
                      ],
                    ),
                  );
                },
                context: context);
          } else if (i == 1) {
            showModalBottomSheet(
                isDismissible: false,
                barrierColor: Colors.transparent,
                builder: (context) {
                  return Container(
                    height: 130,
                    margin: EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: GridView.builder(
                            itemCount: baseclass.basecolor.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    textcolor = baseclass.basecolor[index];
                                  });
                                },
                                child: Card(
                                  color: baseclass.basecolor[index],
                                ),
                              );
                            },
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 8,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close))
                      ],
                    ),
                  );
                },
                context: context);
          } else if (i == 2) {
            _capturePng().then((value) async {
              DateTime dt = DateTime.now(); //2022/06/20 09:57:40
              //20220620095740
              String time =
                  "${dt.year}${dt.month}${dt.day}${dt.hour}${dt.minute}${dt.second}${dt.millisecond}";
              String imagepath = "${folderpath}/Shayri$time.png";
              File file = File(imagepath);
              await file.create();
              file.writeAsBytesSync(value);

              String path = file.path;

              Share.shareFiles([path], text: 'Great picture');
            });
          } else if (i == 3) {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                    height: 70,
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  ffamily = fonts[index];
                                });
                              },
                              child: Container(
                                width: 100,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.white),
                                alignment: Alignment.center,
                                child: Text(
                                  "SHAYRI",
                                  style: TextStyle(fontFamily: fonts[index]),
                                ),
                              ),
                            );
                          },
                          itemCount: fonts.length,
                        )),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close))
                      ],
                    ));
              },
            );
          } else if (i == 4) {
            showModalBottomSheet(
                barrierColor: Colors.transparent,
                isDismissible: false,
                builder: (context) {
                  return Container(
                    height: 140,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return Divider(
                                color: Colors.black,
                              );
                            },
                            itemBuilder: (context, index) {
                              return ListTile(
                                onTap: () {
                                  setState(() {
                                    myemoji = emojilist[index];
                                  });
                                },
                                title: Text(
                                  emojilist[index],
                                  textAlign: TextAlign.center,
                                ),
                              );
                            },
                            itemCount: emojilist.length,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close))
                      ],
                    ),
                  );
                },
                context: context);
          } else if (i == 5) {
            showModalBottomSheet(
                barrierColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Container(
                    height: 100,
                    child: StatefulBuilder(
                      builder: (context, setState1) {
                        return Slider(
                            onChanged: (value) {
                              setState1(() {});
                              setState(() {
                                textsize = value;
                              });
                            },
                            min: 10,
                            max: 50,
                            value: textsize);
                      },
                    ),
                  );
                });
          }
        },
        child: Container(
          margin: EdgeInsets.all(5),
          height: 30,
          //color: Colors.grey.shade400,
          decoration: BoxDecoration(
              color: Color(0xa63EB489),
              border: Border.all(width: .1),
              borderRadius: BorderRadius.circular(28.0)),
          alignment: Alignment.center,
          child: Text(
            btnname[i],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary? boundary = _globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary?;
      ui.Image image = await boundary!.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData!.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);
      print(pngBytes);
      print(bs64);
      setState(() {});
      return pngBytes;
    } catch (e) {
      print(e);
      return Future.value();
    }
  }
}
