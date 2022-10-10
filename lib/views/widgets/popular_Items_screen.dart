import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/searchpage_controller.dart';
class PopularItemsScreen extends StatelessWidget {
   PopularItemsScreen({super.key});
  final _searchPageController = Get.put(SearchPageController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height/4,
      width: Get.width,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _searchPageController.popularitems.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,

                  
                  
          
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5
                        ),
                        alignment: Alignment.bottomCenter,
                        height: Get.height/6.5,
                        width: Get.width/2,
                        decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  offset: const Offset(0, 3),
                                  )
                              ]
                             ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: Get.height/14,
                              width: Get.width/3.2,

                             
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text( _searchPageController.popularitems[index].title,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: Get.width/20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'dashboard',
                                    letterSpacing: 1
                                  ),
                                   ),
                                  Text( _searchPageController.popularitems[index].description ,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            Text('\$${_searchPageController.popularitems[index].price}',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                    fontSize: Get.width/18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'dashboard'
                                  )
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    height: Get.height/6,
                    width: Get.width/2,
                    
                    
                    
                    child: Image.asset(_searchPageController.popularitems[index].imglink,
                    fit: BoxFit.fitHeight,
                    ),
                  )
                  )
              
              ],
            ),
          );
        })
        ),
    );
  }
}