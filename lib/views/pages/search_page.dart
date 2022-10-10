import 'package:flutter/material.dart';
import 'package:food_app/views/widgets/dashboard_topnav.dart';
import 'package:food_app/views/widgets/popular_Items_screen.dart';
import 'package:food_app/views/widgets/search_bar.dart';
import 'package:get/get.dart';

import '../widgets/popular_food_details.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
  
      body: SafeArea(
      
      child: SingleChildScrollView(
        child: Container(
              height: Get.height,
              width: Get.width,
              color: Colors.grey[100],
              child: Column(
                children: [ 
                  //for top height
                 const SizedBox(height: 10,),
                 //Customised App Bar
                  const TopNav(),
                  //Text Item 
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5
                    ),
                   
                    width: Get.width,
                    
                    child: Text('Get your food\nDelivered!',
                    style: TextStyle(
                      fontFamily: 'dashboard',
                      fontSize: Get.width/15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1
                      
                    ),
                    ),
      
                  ),
                    //custom Searchbar
                  SearchBar(),
      
                 //Popular now text
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                     vertical: 2
                    ),
                    alignment: Alignment.topLeft,
                    
                    child: Text('Popular Now',
                      style: TextStyle(
                        fontFamily: 'dashboard',
                        fontSize: Get.width/22,
                       
                        
                        
                      ),
                      ),
                  ),
                  //end of popular now 
                   PopularItemsScreen(),

                   //top food details
                   Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,

                    ),
                    height: Get.height/18 ,
                    width: Get.width,
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Popular Food Details',
                        style: TextStyle(
                          fontSize: Get.width/22
                        ),
                        ),
                        InkWell(
                          child: Text('View More',
                          style: TextStyle(
                          fontSize: Get.width/28,
                          color: Colors.grey
                        ),
                          
                          ),
                        )
                      ],
                    ),
                   ),

                   Expanded(
                    child: PopularFoodDetailsGrid()
                    
                    ),
                   
                  
                ],
              ),
            ),
      ),
    ),
    );
  }
}