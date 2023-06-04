import 'package:first_ui/views/product%20screen/model/product_model.dart';
import 'package:first_ui/views/product%20screen/view/detail_product.dart';
import 'package:first_ui/views/setting%20Screen/screen/setting_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SettingScreen(),
      appBar: AppBar(
        title: const Text('Category'),
        actions: const [
          Center(
            child: Badge(
              // position: BadgePosition.topEnd(),
              // showBadge: true,
              // badgeContent: const Text('4'),
              child: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search product',
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 8),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              width: double.infinity,
              child: const Text(
                'Vegatable ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              children: List.generate(listProducts.length,
                  (index) => buildProductCard(listProducts[index])),
            ),
          )
        ],
      ),
    );
  }

  Widget buildProductCard(ProductModel productModel) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailProduct(productModel: productModel),
              ));
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(productModel.image.toString()))),
            ),
            Positioned(
              top: 3,
              right: 2,
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        productModel.faverite != productModel.faverite;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: productModel.faverite! ? Colors.red : Colors.grey,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: -5,
                child: Chip(
                    backgroundColor: Colors.blueAccent,
                    label: Text(productModel.name.toString())))
          ],
        ),
      ),
    );
  }
}
