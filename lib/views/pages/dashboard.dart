import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/controllers/dashbaord_controller.dart';
import 'package:food_app/views/pages/account_page.dart';
import 'package:food_app/views/pages/cart_page.dart';
import 'package:food_app/views/pages/favourate_page.dart';
import 'package:food_app/views/pages/home_page.dart';
import 'package:food_app/views/pages/search_page.dart';
import 'package:get/get.dart';



class DashBoard extends StatelessWidget {
   DashBoard({super.key});

   DashBoardController _searchPageController = Get.put(DashBoardController());

  final _pages =  [
    HomePage(),
    FavouratePage(),
    SearchPage(),
    AccountPage(),
    CartPage()
  
  ];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      extendBody: true,
      
      
    
      bottomNavigationBar:  
      
        
          SizedBox(
            height: Get.height/25,
            child: CurvedNavigationBar(
                  color: Colors.white,
             
             height: Get.height/12,
                  buttonBackgroundColor: Colors.red,          
                  backgroundColor: Colors.transparent,
                  index: 2,

                   
                  
                   
                  onTap: (value) {
                 
                      _searchPageController.changepage(value);
                  
                   
                    
                    
                  },
                  
                  
                  
                  items: const  [
                    Icon(Icons.home),
                    Icon(Icons.favorite_border),
                    Icon(Icons.search_outlined),
                    Icon(Icons.account_circle_outlined),
                    Icon(Icons.shopping_cart_outlined),
                  ]
                  
                  ),
          ),
      
    
       
     
     
      body: Obx((){
            return _pages[_searchPageController.index.value];
          }),
     
      
        
     
      

      

    );
  }
}