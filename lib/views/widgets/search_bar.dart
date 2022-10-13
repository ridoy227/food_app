import 'package:flutter/material.dart';
import 'package:food_app/optional/assetslink.dart';
import 'package:get/get.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(
              horizontal: 10,
            ),
      height: Get.height/14,
      width: Get.width,
  
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            
            height:Get.height/18,
            width: Get.width/1.4,
            child: TextField(
              
              decoration: InputDecoration(
                
                
               prefixIcon: const Icon(Icons.search_outlined,color: Colors.pink,),
                enabledBorder: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(Get.width/5),
                  borderSide:const BorderSide(
                    color: Colors.pink,
                    width: 3
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Get.width/5),
                  borderSide:const BorderSide(
                    color: Colors.amber,
                    width: 3
                  )
                ),
                
                
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.redAccent,
            child: Image.asset(AssetsLink().burfericon,fit: BoxFit.cover),
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            child: Image.asset(AssetsLink().faludaicon,fit: BoxFit.cover),
          ),
        ],
      ),
      
    );
  }
}