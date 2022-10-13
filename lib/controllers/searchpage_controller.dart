import 'package:food_app/optional/assetslink.dart';
import 'package:food_app/models/popular_item.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController{
  final List<PopularItems> popularitems = [
    PopularItems(AssetsLink().burfericon, 'Burger', 'Beef Burger with onion', '3', '4.5'),
    PopularItems(AssetsLink().faludaicon, 'Faluda', 'Mixed Food Faluda ', '1.5', '4.5'),
    PopularItems(AssetsLink().pastaicon, 'Pasta', 'Maxican Pasta', '6', '4.5'),
    PopularItems(AssetsLink().pizzaicon, 'Slice Pizza', 'Vagitable Pizza ', '1.8', '4.5'),
  ];
  final List<PopularItems> popularfooddetails = [
    PopularItems(AssetsLink().burgerimage, 'Burger', 'Beef Burger with onion', '3', '4.5'),
    PopularItems(AssetsLink().chickenimage, 'Chikcen', 'Chicken Curry', '6', '4.5'),
    PopularItems(AssetsLink().srimpimage, 'Srimp', 'Srimp Items', '1.8', '4.5'),
    PopularItems(AssetsLink().swarmaimage, 'Swarma', 'Chicken Swarma with vagitable', '3', '4.5')
  ];



  
}