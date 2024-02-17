
import 'package:get/get.dart';

class FavouriteController extends GetxController{
  RxList<dynamic> fav = [].obs;

  onChanged(String fruit){
    if(fav.contains(fruit)){
      fav.remove(fruit);
    }
    else{
      fav.add(fruit);
    }
  }
}