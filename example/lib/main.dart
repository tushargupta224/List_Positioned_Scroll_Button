import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'component/tile.dart';
import 'package:list_positioned_scroll_button/list_positioned_scroll_button.dart';

const totalItems = 100;

void main () {
  runApp(ListPositionedScrollButtonApp());
}

class ListPositionedScrollButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListPositionedScrollButtonExample(),
    );
  }
}

class ListPositionedScrollButtonExample extends StatelessWidget {

  final List<String> _myList = List.generate(totalItems, (i) => "$i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*0.4,
          width: MediaQuery.of(context).size.width*0.72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 30),
                child: Text(
                  'Recents',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width*0.7,
                  child: ScrollablePositionedList.builder(
                    scrollDirection: Axis.horizontal,
                    itemScrollController: ListPositionedScrollButton.itemscrollcontroller,
                    itemCount: _myList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Tile(
                            text: _myList[index],
                          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        onPressed: () {
                          ScrollBack(
                            pageitemcount: 8,
                          );
                        },
                        child: const Text('Prev',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            onSurface: Colors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        onPressed: () {
                          ScrollNext(
                            pageitemcount: 8,
                          );
                        },
                        child: const Text('Next',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            onSurface: Colors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}