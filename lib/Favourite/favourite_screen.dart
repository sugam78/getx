import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Favourite/favourite_controller.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['Apple','Mango','Orange','Guava','Banana','Watermelon'];
    FavouriteController controller = Get.put(FavouriteController());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: fruits.length,
                itemBuilder: (context,index){
                  return Obx(() {
                    return ListTile(
                      onTap: (){
                        controller.onChanged(fruits[index]);
                      },
                      title: Text(fruits[index]),
                      leading: Text((index+1).toString()),
                      trailing: Icon(controller.fav.contains(fruits[index])?Icons.favorite: Icons.favorite_outline),
                    );
                  });
                }
            ),
          ),
        ],
      ),
    );
  }
}
