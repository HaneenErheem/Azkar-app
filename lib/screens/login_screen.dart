import 'dart:ui';

import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  int _counter = 0;
  String _zeker = 'استغفر الله';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          actionsIconTheme: IconThemeData(
            color: Colors.teal,
          ),
          backgroundColor: Colors.white,
          title: Text(
            'مسبحتي',
            style: TextStyle(color: Colors.teal),
          ),
          actions: [
            PopupMenuButton<String>(
                icon: Icon(Icons.more_vert),
                offset: Offset(30, 30),
                onSelected: (String selectedItem) {
                  switch (selectedItem) {
                    case 'z1':
                      _chaneItem('سبحان االله');
                      break;
                    case 'z2':
                      _chaneItem('استغفر االله');
                      break;
                    case 'z3':
                      _chaneItem('الحمد لله');
                      break;
                    case 'z4':
                      _chaneItem('لا اله الا االله');
                      break;
                    default:
                  }
                },
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text('سبحان الله'),
                      value: 'z1',
                    ),
                    PopupMenuItem(
                      child: Text('استغفر الله'),
                      value: 'z2',
                    ),
                    PopupMenuItem(
                      child: Text(' الحمد لله'),
                      value: 'z3',
                    ),
                    PopupMenuItem(
                      child: Text('لا اله الا الله'),
                      value: 'z4',
                    ),
                  ];
                })
          ],
        ),
        //----------------------------------------body-----------------------
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.center,

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/masbaha.JPG'),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsetsDirectional.only(top: 20, bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _zeker,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          _counter.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.white),
                        ),
                        color: Colors.blue,
                        height: 50,
                        width: 50,
                        // decoration: BoxDecoration(
                        //     color: Colors.blue,
                        //     borderRadius: BorderRadius.only(
                        //         topLeft: Radius.circular(15),
                        //         bottomLeft: Radius.circular(15))),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              ++_counter;
                            });
                          },
                          child: Text(
                            'تسبيح',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ))),
                        )),
                    Expanded(
                        // flex: 1,
                        child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      child: Text(
                        'مسح',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ))),
                    )),
                  ],
                )
              ]),
        ),
      ),
    );
  }
  //--------------------دالة تغيير الذكر وتصفير الرقم ---------------

  void _chaneItem(String Item) {
    if (_zeker != Item) {
      setState(() {
        _zeker = Item;
        _counter = 0;
      });
    }
  }
}
