import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TopNav extends StatelessWidget {
  const TopNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10
                  ),
                 
                  height: Get.height/10,
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.menu_open_outlined,
                        size: Get.width/12,
                        color: Colors.black,
                        ),
                      ),
                        Container(
                          
                         
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Location',
                              
                              textAlign: TextAlign.center,
                              
                              style: TextStyle(
                                fontFamily: 'dashboard',
                                fontSize: Get.width/25,
                                color: Colors.grey,
                                letterSpacing: 1
                              ),
                              ),

                              Row(
                                children: [
                                  Icon(Icons.location_on,
                                  color: Colors.red,
                                  ),
                                  
                                  Text("Dhaka",
                                  style: TextStyle(
                                    fontFamily: 'dashboard',
                                fontSize: Get.width/18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.account_circle_outlined,
                        size: Get.width/12,
                        color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
  }
}