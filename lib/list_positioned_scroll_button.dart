library list_positioned_scroll_button;

import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

var n = 3;

var desiredbackindex = 0;
var desiredItemIndex = n;
bool canbackscroll = false ;

class ListPositionedScrollButton extends StatefulWidget{
  static ItemScrollController itemscrollcontroller = ItemScrollController();

  @override
  ScrollNext createState() => ScrollNext(pageitemcount: n);
}

class ScrollNext extends State<ListPositionedScrollButton> {
  final ItemScrollController itemscrollcontroller = ListPositionedScrollButton.itemscrollcontroller;


  ScrollNext({required int pageitemcount}) : assert(pageitemcount != Null) {
    n = pageitemcount;
    itemscrollcontroller.scrollTo(
        index: desiredItemIndex,
        duration: Duration(seconds: 2),
        curve: Curves.easeInCubic);
    if (desiredItemIndex==n) {
      desiredItemIndex = n+n;
      desiredbackindex = 0;
    }
    else  {
      desiredItemIndex = desiredItemIndex + n;
      desiredbackindex = desiredItemIndex - (n+n);
    }
    print('For Front');
    print(desiredbackindex);
    print(desiredItemIndex);
    print(canbackscroll);
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

}


class ScrollBack extends State<ListPositionedScrollButton> {

  final ItemScrollController itemscrollcontroller = ListPositionedScrollButton.itemscrollcontroller;

  ScrollBack({required int pageitemcount}) : assert(pageitemcount != Null) {
    n = pageitemcount;
    if (desiredbackindex >=0 && desiredItemIndex>n) {
      itemscrollcontroller.scrollTo(
          index: desiredbackindex,
          duration: Duration(seconds: 2),
          curve: Curves.easeInCubic);
      if(desiredbackindex == 0) {
        desiredItemIndex = n;
        canbackscroll = false ;
      }
      else if (desiredbackindex != 1 && desiredItemIndex > n && desiredbackindex>n && desiredItemIndex != n+n) {
        desiredbackindex = desiredbackindex - n;
        desiredItemIndex  = desiredItemIndex - n;
      }
      else if (desiredItemIndex == n+n+n && desiredbackindex == n) {
        desiredbackindex = 0;
        desiredItemIndex = n+n;
        canbackscroll = true;
      }
      else if (desiredItemIndex == n+n && desiredbackindex == n) {
        desiredbackindex = 0;
        desiredItemIndex = n;
        canbackscroll = true;
      }
      print("For back");
      print(desiredbackindex);
      print(desiredItemIndex);
      print(canbackscroll);
    }
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

}
