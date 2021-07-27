import 'package:flutter/material.dart';
import 'package:nunuacars/screens/home_screen/components/home_screen_widget.dart';
import 'package:nunuacars/screens/home_screen/components/profile_screen_widget.dart';
import 'package:nunuacars/screens/home_screen/components/search_screen_widget.dart';

import 'components/menu_screen_widget.dart';

List<Widget> homeScreenWidgets = <Widget>[
  HomeScreenWidget(),
  SearchScreenWidget(),
  ProfileScreenWidget(),
  MenuScreenWidget(),
];
