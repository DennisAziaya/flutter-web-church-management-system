import 'package:flutter/material.dart';

import '../../constants/styles.dart';
import '../../helpers/local_navigator.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: localNavigator(),
    );
  }
}
