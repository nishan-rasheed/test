import 'package:api/model/model_pdetails.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
   ProductList({Key? key, required this.data}) : super(key: key);
 
ProductDetails data ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('dfsdfsdfsdf');
      },
      child: Column(
        children: [
          ListTile(
            title: Text(data.productName.toString()),
            trailing: Text(data.price.toString()),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.description.toString()),
                Text(data.size.toString()),
    
              ],
                    ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data.image.toString()),
                backgroundColor: Colors.green,
              ),
          ),
          Divider(
                    color: Colors.black,
                  )
        ],
      ),
    );
    
  }
}