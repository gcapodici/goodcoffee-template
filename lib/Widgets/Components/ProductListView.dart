import 'package:flutter/material.dart';

import '../../Model/Product.dart';
import 'ProductContainer.dart';

class ProductListView extends StatelessWidget {
  List<dynamic> list;
  ProductListView(this.list);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount:list.length,
      shrinkWrap: true,
      itemBuilder: (context, index){
        return  ProductContainer(list[index],onPress:  () {
        });
      },
    );
  }
}