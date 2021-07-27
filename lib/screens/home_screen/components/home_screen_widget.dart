import 'package:flutter/material.dart';

import 'home_screen_carousel.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

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
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
