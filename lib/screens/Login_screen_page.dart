import 'package:beehive/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key ? key}) : super(key : key);

  @override
  State<StatefulWidget> createState() => LoginState();

}

class LoginState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: Container(
           padding: const EdgeInsets.symmetric(horizontal: 32),
           width: double.infinity,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
                SvgPicture.asset(
                  'assets/instagram.svg',
                  color: primaryColor,
                  height: 64,
                )
             ],
           ),
         ),
       ),
    );
  }

}