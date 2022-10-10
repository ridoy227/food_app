import 'package:food_app/assets/assetslink.dart';
import 'package:food_app/models/popular_item.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController{
  final List<PopularItems> popularitems = [
    PopularItems(AssetsLink().burfericon, 'burger', 'description', '10', '4.5'),
    PopularItems(AssetsLink().faludaicon, 'burger', 'description', '10', '4.5'),
    PopularItems(AssetsLink().chickenimage, 'burger', 'description', '10', '4.5'),
    PopularItems(AssetsLink().pastaicon, 'burger', 'description', '10', '4.5'),
    PopularItems(AssetsLink().pizzaicon, 'burger', 'description', '10', '4.5'),
    PopularItems(AssetsLink().srimpimage, 'burger', 'description', '10', '4.5'),
  ];
}