import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_bc02/views/login_ui.dart';
import 'package:flutter_app_bc02/views/sign_up_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //code เช็ดค่าของ Status Bar เพื่อให้หน้าจอเห็นแบบ Full Screen จริงๆ *0*
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.appleAlt,
                      size: 80.0,
                      color: Color(0xff333333),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'START',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff333333),
                      ),
                    ),
                  ],
                ),
              ), 
              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'your',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff333333),
                      ),
                    ),
                  ],
                ),
              ), 
              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'adventure',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff333333),
                      ),
                    ),
                  ],
                ),
              ), 
              SizedBox(
                height: 100.0,
              ),
              ElevatedButton(
                onPressed: () {       //โค๊ดเปิดหน้าจอ
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginUI();
                      },
                    ),
                  );
                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width -120,
                    70.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      70.0,
                    ),
                  ),
                  primary: Colors.yellow[700],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You don\'t have an account? ',
                  ),
                  //GestureDetector และก็สามารถใช้ Inkwell ได้ 
                  GestureDetector(   
                    onTap: () {         //โค๊ดปุ่ม SingUp
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context){
                            return SingUpUI();
                          }
                        ),
                      );
                    },
                    child: Text(
                      'Sign up here.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}