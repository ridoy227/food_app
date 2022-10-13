import 'package:flutter/material.dart';
import 'package:food_app/controllers/searchpage_controller.dart';
import 'package:food_app/models/popular_item.dart';
import 'package:get/get.dart';

class ItemDetails extends StatelessWidget {
   ItemDetails({super.key});
  var data = Get.arguments;
 final SearchPageController _searchPageController = Get.put(SearchPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [Container(
              height: Get.height/4,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(Get.width/6)
                )
              ),
            ),
            Positioned(
              top: -Get.width/4,
              right: -Get.width/4,
              child: Container(height: Get.height/3.5,width: Get.width/2,decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Get.width)
              ),)
              
              ),
              Positioned(
              top: Get.width/12,
              left: -Get.width/6.5,
              child: Container(height: Get.height/3,width: Get.width/1.65,decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(Get.width)
              ),)
              
              ),
              Positioned(
                top: Get.height/4,
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Get.width/6)
                )
                  ),
                )
                
                ),


                Positioned(
                  top:  Get.height/10,
                  right: 0,
                  left: 0,
                  child: SizedBox(
                    height: Get.height/3,
                    
                    child: Hero(
                      tag: Get.arguments[2],
                      
                      child: Image.asset(Get.arguments[2].toString()  ))   )
                  
                  ),
                  Positioned(
                    top: Get.height/2.5,
                    child: Container(
                      
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        
                      ),
                      height: Get.height/12,
                      width: Get.width,
                  
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: Get.height/12,
                            width: Get.width/1.5,
                            
                            child: Text(Get.arguments[0],
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                                  fontSize: Get.width/12,
                                  fontWeight: FontWeight.bold
                                  
                                )
                            
                            ),
                          ),
                         Row(
                              children: [
                                Icon(Icons.star,color: Colors.teal,
                                size: Get.width/15,
                                ),
                                Text(Get.arguments[4],
                                style: TextStyle(
                                  fontSize: Get.width/22,
                                  color: Colors.grey
                                  
                                ),
                                
                                )
                              ],
                            ),
                          
                        ],
                      ),
                    ),
                  ),
                  
           
            ],
          ),
          
          
          ),
      ),
        
      
    );
  }
}