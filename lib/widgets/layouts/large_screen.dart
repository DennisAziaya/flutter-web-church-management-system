import 'package:flutter/material.dart';
import 'package:repentanceforumweb/widgets/layouts/side_menu.dart';

import '../../constants/styles.dart';
import '../../helpers/local_navigator.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
      children: [
        const Expanded(child: SideMenu()),
        Expanded(
          flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: localNavigator(),
            ))
      ],
    ),);
  }
}
