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
                        itemCount: _searchPageController.popularfooddetails.length,
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
                                     
                                      
                                    
                                    borderRadius: BorderRadius.circular(Get.width/50),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 1,
                                        color: Colors.grey,
                                        spreadRadius: 1,
                                        offset: Offset(3, 8)
                                      )
                                    ]
                                  ),
                                  height: Get.height/3.8,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(Get.width/50),
                                    
                                    child: Image.asset(_searchPageController.popularfooddetails[index].imglink, fit: BoxFit.fitHeight,)),
                                ),
                                Positioned(
                                  top: Get.width/25,
                                  right: Get.width/25,
                                  child: Icon(Icons.favorite_border, color: Colors.white,)
                                ),
                                

                                Positioned(
                                  bottom: 0,
                                  child: Container(

                                   
                                   height: Get.height/10,
                                   width: Get.width/2.25,
                                   decoration:BoxDecoration(
                                   borderRadius:  BorderRadius.circular(Get.width/50),

                                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black,
                  ],
                  stops: [
                    0.0,
                    1.0
                  ])
                                   ) ,
                                    
                                  )
                                ),
                                Positioned(
                                 
                                  bottom: 0,
                                  child:  Container(
                                    
                                    
                                      height: Get.height/12,
                                    
                                  
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding:  EdgeInsets.symmetric(
                                      horizontal: Get.width/50
                                    ),
                                            height: Get.height/10,
                                            width: Get.width/3.5,
                                          
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(_searchPageController.popularfooddetails[index].title, style: TextStyle(
                                                  fontFamily: 'dashboard',
                                                  fontSize: Get.width/22,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white
                                                  ),overflow: TextOverflow.ellipsis, ),
                                                Text(_searchPageController.popularfooddetails[index].description,style: TextStyle(
                                                  fontFamily: 'dashboard',
                                                  fontSize: Get.width/30,
                                                  color: Colors.grey[100]
                                                  ),overflow: TextOverflow.ellipsis,)
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            
                                           
                                            height: Get.height/10,
                                            
                                            
                                        
                                            child: Text("\$${_searchPageController.popularfooddetails[index].price}", style: TextStyle(
                                              fontFamily: 'dashboard',
                                              fontSize: Get.width/20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                              ),overflow: TextOverflow.ellipsis,),
                                            )
                                        ],
                                      ),
                                    ),
                                 
                                ),
         
         

                              ],
                            ),
                             
                          );
                        }
                        
                        ),
    );
  }
}