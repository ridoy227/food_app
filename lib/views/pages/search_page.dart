import 'package:flutter/material.dart';
import 'package:food_app/views/widgets/dashboard_topnav.dart';
import 'package:food_app/views/widgets/search_bar.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
            height: Get.height,
            width: Get.width,
            color: Colors.grey[100],
            child: Column(
              children: [ 
               const SizedBox(height: 10,),
                const TopNav(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10
                  ),
                 
                  width: Get.width,
                  
                  child: Text('Get your food\nDelivered!',
                  style: TextStyle(
                    fontFamily: 'dashboard',
                    fontSize: Get.width/10,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1
                    
                  ),
                  ),

                ),

               const SearchBar(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10
                  ),
                  alignment: Alignment.topLeft,
                  
                  child: Text('Popular Now',
                    style: TextStyle(
                      fontFamily: 'dashboard',
                      fontSize: Get.width/18,
                     
                      
                      
                    ),
                    ),
                ),
                
                
              ],
            ),
          ),
    );
  }
}