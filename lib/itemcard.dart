import 'package:api/model/model_pdetails.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
   ItemCard({Key? key,required this.data}) : super(key: key);

  ProductDetails data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        
      ),
      child: Column(
        children: [
          
          Text(data.productName.toString()),
          SizedBox(
            width: 150.0,

            child: Image.network(data.image.toString())),
            Text(data.description.toString()),

        ],
      ),
    );
  }
}