import 'package:flutter/material.dart';

import 'home_screen_carousel.dart';

class HomeScreenWidget extends StatelessWidget {
  HomeScreenWidget({Key? key}) : super(key: key);

  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 400.0,
                    child: Container(
                      color: Colors.red,
                      child: Column(
                        children: [
                          TextField(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              TextEditingController().clear();
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Search',
                            ),
                          ),
                          Row(
                            children: [
                              Text('Featured'),
                              Spacer(),
                              Text('See all'),
                            ],
                          ),
                          FeaturedCarousel(),
                        ],
                      ),
                    ),
                  ),
                  new Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      child: GridView.builder(
                        itemCount: images.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                        itemBuilder: (BuildContext context, int index) {
                          return Image.network(images[index]);
                        },
                      ),
                    ),
                  ),
                  // Expanded(

                  // height: 500,
                  // child: Container(
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         children: [
                  //           Text('Popular Cars'),
                  //           Spacer(),
                  //           Text('See all'),
                  //         ],
                  //       ),
                  //       Container(
                  //           padding: EdgeInsets.all(12.0),
                  //           child: GridView.builder(
                  //             itemCount: images.length,
                  //             gridDelegate:
                  //                 SliverGridDelegateWithFixedCrossAxisCount(
                  //                     crossAxisCount: 2,
                  //                     crossAxisSpacing: 4.0,
                  //                     mainAxisSpacing: 4.0),
                  //             itemBuilder: (BuildContext context, int index) {
                  //               return Image.network(images[index]);
                  //             },
                  //           ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
