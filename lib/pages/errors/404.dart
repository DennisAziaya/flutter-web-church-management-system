import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:repentanceforumweb/widgets/layouts/custom_text.dart';

import '../../routing/routes.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/page-not-found.json', width: MediaQuery.of(context).size.width*0.4),
            const SizedBox(height: 20,),
            InkWell(onTap: (){
              Get.offAllNamed(rootRoute);
            }, child: Container(
              //width: 20,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo
                ),
                child: const CustomText(text: "Go Back", color: Colors.white,)))
          ],
        ),),
    );
  }
}
