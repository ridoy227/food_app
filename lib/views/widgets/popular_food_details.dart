import 'package:flutter/material.dart';
import 'package:food_app/controllers/searchpage_controller.dart';
import 'package:food_app/optional/assetslink.dart';
import 'package:get/get.dart';


class PopularFoodDetailsGrid extends StatelessWidget {
   PopularFoodDetailsGrid({super.key});
  SearchPageController _searchPageController = Get.put(SearchPageController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: GridView.builder(
                        itemCount: _searchPageController.popularitems.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        

                          ), 
                        
                        

                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(Get.width/20),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 1,
                                        color: Colors.grey,
                                        spreadRadius: 1,
                                        offset: Offset(3, 3)
                                      )
                                    ]
                                  ),
                                  height: Get.height/3.8,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(Get.width/20),
                                    
                                    child: Image.asset(AssetsLink().burgerimage, fit: BoxFit.fitHeight,)),
                                ),
                                Positioned(
                                  top: Get.width/25,
                                  right: Get.width/25,
                                  child: Icon(Icons.favorite_border, color: Colors.white,)
                                )

                              ],
                            ),
                             
                          );
                        }
                        
                        ),
    );
  }
}