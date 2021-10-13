# List_Positioned_Scroll_Button

Control Scroll of Scrollable Positioned List with Next and Previous button in Flutter. Based on [scrollable_positioned_list](https://pub.dev/packages/scrollable_positioned_list).

## Showcase

<img src ="https://github.com/tushargupta224/List_Positioned_Scroll_Button/blob/main/flutter_list_positioned_scroll_button.gif">

Scroll for pageitemcount:8

![image](flutter_list_positioned_scroll_button.gif)

#### Highlight - 

Easy Scroll to next and previous pages in sliders.
Just use ScrollNext in onPressed function for next page scrolling and ScrollBack for back page.
A full example can be found in the examples.

#### Features
* Easy scrolling with built-in functions.
* Make the pages with your desired no. of items
* Animated Scrolling

## Getting Started

Add list_positioned_scroll_button in your pubspec.yaml,

```yaml
  dependencies:
     list_positioned_scroll_button: ^0.0.1
 ```

In your dart file, import the library:

 ```Dart
import 'package:list_positioned_scroll_button/list_positioned_scroll_button.dart';
 ``` 

Create a Scrollable Positioned List and change its```itemscrollcontroller```  to
```ListPositionedScrollButton.itemscrollcontroller```
 ```Dart
ScrollablePositionedList.builder(
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
 ``` 

Now, create your button for scroll to next/prev page and in OnPressed, add function :

For Next Page Scroll,add ScrollNext() function and specify pageitemcount(no. of items of list in 
one page):
```Dart
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
 ```
For Previous Page Scroll,add ScrollBack() function and specify pageitemcount(no. of items of list in
one page):
```Dart
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
 ```

For better scrolling to both sides, make sure to keep pageitemcount same for both ScrollNext and
ScrollBack function.

### Parameters:
| Name | Description | Required | Default value |
|----|----|----|----|
|`pageitemcount`| number of item in One page of Scroll  | required | - |


## Coming Soon

* More parameter will be added.
* Option to change scroll animations.

### Used packages:
| Package name | Copyright | License |
|----|----|----|
|[scrollable_positioned_list](https://pub.dev/packages/scrollable_positioned_list) | Copyright 2018 the Dart project authors, Inc. All rights reserved | [BSD 3-Clause "New" or "Revised" License] |

### Social Media:
- Github : https://github.com/tushargupta224/
- Behance : https://www.behance.net/tushar224
- Dribble : https://dribbble.com/tushar224