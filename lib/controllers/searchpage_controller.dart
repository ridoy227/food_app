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


  
}