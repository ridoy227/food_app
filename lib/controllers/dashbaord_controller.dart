import 'package:get/get.dart';

class DashBoardController extends GetxController{
  var index = 2.obs;
  
  changepage(int a){
    index(a);
  }

}