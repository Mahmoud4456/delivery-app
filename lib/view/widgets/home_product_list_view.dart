import 'package:flutter/cupertino.dart';
import 'package:ui/view/widgets/product_popular_item_home.dart';

class HomeProductListView extends StatelessWidget {
  const HomeProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context , index){
          return const ProductPopularItem();
        });
  }
}
