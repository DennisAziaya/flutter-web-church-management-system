import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repentanceforumweb/constants/styles.dart';
import 'package:repentanceforumweb/routing/routes.dart';
import 'package:repentanceforumweb/widgets/layouts/base.dart';

import '../../../widgets/layouts/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //margin: EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context) ? 76 : 80),
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [Image.asset("assets/images/logo.png", height: 50,),
                SizedBox(width: 10,) ,const CustomText(text: "Repentance Forum CMS", fontWeight: FontWeight.bold, size: 20,)],),
              const SizedBox(height: 50,),
              Row(children: [
                Container(
                  child: const CustomText(text: "Login", size: 24, fontWeight: FontWeight.bold,),
                )
              ],),
              const SizedBox(height: 30,),
              CustomText(text: "Welcome to the admin panel", color: lightGreyColor,),
              const SizedBox(height: 15,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined, color: lightGreyColor, size: 16,),
                  labelText: "Email",
                  hintText: "hello@email.com",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                ),
              ),
              const SizedBox(height: 15,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password, color: lightGreyColor, size: 16,),
                    labelText: "Password",
                    hintText: "12345",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                ),
              ),
              const SizedBox(height: 15,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(children: [
                  Checkbox(value: true, onChanged: (value){}),
                  const CustomText(text: "Remember me",)
                ],),
                const CustomText(text: "Forgot password", color: Colors.indigo,)
              ],),
              const SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  //Get.offAll(() => BaseLayout());
                  Get.offAllNamed(rootRoute);
                  },
                child: Container(
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                    CustomText(text: "Login", color: Colors.white, size: 18,),
                      SizedBox(width: 10,),
                      Icon(Icons.chevron_right_sharp, color: Colors.white)
                  ],)
                ),
              ),
              const SizedBox(height: 15,),
              RichText(text: const TextSpan(children: [
                TextSpan(text: "Do not have admin credentials? "),
                TextSpan(text: "Request credentials", style: TextStyle(color: Colors.indigo)),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
