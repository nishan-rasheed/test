import 'package:api/itemcard.dart';
import 'package:api/model/model_pdetails.dart';
import 'package:api/plist.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
List<String> _locations = ['A', 'B', 'C', 'D'];

 String? _selectedLocation; 

  List<ProductDetails> products = [
    ProductDetails(
      productName: 'shirt',
      description: 'mens shirt',
      size: 34,
      price: 700,
      image:"https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/9951411/2019/8/5/fe1322b7-9e53-4b6e-8423-0a4f5a9e8b4b1565006161882-Roadster-Men-Shirts-8701565006159466-1.jpg" 
    ),
    ProductDetails(
      productName: 'pants',
      description: 'blue pants',
      size: 34,
      price: 900,
      image: "https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/7229767/2019/1/31/97d63969-943d-46d3-b9e0-6bf57b6428821548938509728-WROGN-Men-Blue-Slim-Fit-Mid-Rise-Clean-Look-Stretchable-Jean-1.jpg"
    ),
    ProductDetails(
      productName: 'shirt',
      description: 'red shirt',
      size: 30,
      price: 650,
      image:"https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/11326720/2020/9/30/0c23388e-a619-4d92-8428-59650fb991271601466121878-Roadster-Men-Shirts-6951601466120289-2.jpg" 
    ),
    ProductDetails(
      productName: 'shoe',
      description: 'white shoe',
      size: 9,
      price: 600,
      image: "https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/15353806/2021/10/28/a2cb2b72-af5d-4266-8eaf-98b4046b4fee1635400011527-Nautica-Men-Shirts-5501635400010093-2.jpg"
    ),
    ProductDetails(
      productName: 'jeans',
      description: 'black jeans',
      size: 30,
      price: 850,
      image: "https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/15248556/2021/9/20/5c83b6b2-89dd-4b17-87e4-b77916fe02c01632135090294-Nautica-Men-Jeans-431632135089410-1.jpg"
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          children: [
            const Text("list of products"),
            
             DropdownButton(
            hint: Text('Please choose a location'), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (newValue) {
              setState(() {
                _selectedLocation = newValue as String;
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
            
          ],
        ),
      ),
      // body: ListView.builder(
      //   itemCount: products.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return ProductList(data:products[index],

      //     )  ;
      //   },
      // ),

      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return  ItemCard(data: products[index],);
        },
      ),

    );
  }
}
