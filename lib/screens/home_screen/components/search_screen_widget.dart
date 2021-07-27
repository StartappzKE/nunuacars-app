import 'package:flutter/material.dart';
import 'package:nunuacars/constants/constants.dart';

class SearchScreenWidget extends StatefulWidget {
  @override
  _SearchScreenWidgetState createState() => _SearchScreenWidgetState();
}

class _SearchScreenWidgetState extends State<SearchScreenWidget> {
  final List<String> car_makes = <String>[
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  String selectedCarMake = "";
  String selectedCarModel = "";
  String selectedCarYear = "";
  String selectedCarFuelType = "";

  // TODO rename this upon checking with designer
  String selectedSomethingElse = "";
  String selectedBodyType = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'SEARCH A VEHICLE',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *
                            kPaddingWithSpacing,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Make'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        kNormalBodyPadding,
                                  ),
                                  DropdownButton<String>(
                                    isExpanded: true,
                                    items: car_makes.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    hint: Text('Select'),
                                    onChanged: (_) {},
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        kNormalBodyPadding,
                                  ),
                                  Text('Year'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        kNormalBodyPadding,
                                  ),
                                  DropdownButton<String>(
                                    isExpanded: true,
                                    items: car_makes.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    hint: Text('Select'),
                                    onChanged: (_) {},
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        kNormalBodyPadding,
                                  ),
                                  Text('Fuel Type'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        kNormalBodyPadding,
                                  ),
                                  DropdownButton<String>(
                                    isExpanded: true,
                                    items: car_makes.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    hint: Text('Select'),
                                    onChanged: (_) {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Model'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        kNormalBodyPadding,
                                  ),
                                  DropdownButton<String>(
                                    isExpanded: true,
                                    items: car_makes.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    hint: Text('Select'),
                                    onChanged: (_) {},
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        kNormalBodyPadding,
                                  ),
                                  Text('Fuel Type'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        kNormalBodyPadding,
                                  ),
                                  DropdownButton<String>(
                                    isExpanded: true,
                                    items: car_makes.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    hint: Text('Select'),
                                    onChanged: (_) {},
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        kNormalBodyPadding,
                                  ),
                                  Text('Body Type'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        kNormalBodyPadding,
                                  ),
                                  DropdownButton<String>(
                                    isExpanded: true,
                                    items: car_makes.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    hint: Text('Select'),
                                    onChanged: (_) {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *
                            kPaddingWithSpacing,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('SEARCH'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
