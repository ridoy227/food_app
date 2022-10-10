import 'package:flutter/material.dart';
import 'package:food_app/views/pages/dashboard.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height/1.5,
                  width: Get.width,
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        height: Get.height/2.2,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(150),
                            bottomRight: Radius.elliptical(80, 25)
                          )
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: Get.height/4,
                        width: Get.width,
                              child: Image.asset('assets/images/background.png', fit: BoxFit.scaleDown,)),
                            
                          ],
                        )
                        
                        
                      ),
                      Positioned(
                        bottom:- Get.height/16,
                        left: 10,
                        right: 10,
                        child:  SizedBox(
                          height: Get.height/1.5,
                          width: Get.width,
                          child: Image.asset('assets/images/burger_splash.png'),
                        )
                        
                        )
                    ],
                  ),
                ),
                Text('Eat the most\ntastiest burger\nin america',
                textAlign: TextAlign.center,
                style: TextStyle(
                  
                  fontFamily: 'roboto',
                  fontSize: Get.width/12,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold
                  
                )
                ),
                //get started button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Get.off(  DashBoard(), transition: Transition.downToUp, duration: const Duration(
                        seconds: 1
                      ));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Get.width/15,
                        
                      ),
                      height: Get.height/10,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(Get.height/5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Get Started',
                          style: TextStyle(
                    
                    fontFamily: 'roboto',
                    fontSize: Get.width/15,
                    letterSpacing: 1,
                    color: Colors.white
                                  
                    
                                  ),
                          ),
                          const Icon(Icons.arrow_forward_ios,
                          color: Colors.white,
                          )
                          
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
        ),
    );
  }
}