import 'package:first_ui/views/product%20screen/model/product_model.dart';
import 'package:first_ui/views/product%20screen/view/detail_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controller/shopping_controller.dart';

class ShoppingCardScreen extends StatefulWidget {
  const ShoppingCardScreen({super.key});

  @override
  State<ShoppingCardScreen> createState() => _ShoppingCardScreenState();
}

class _ShoppingCardScreenState extends State<ShoppingCardScreen> {
  ShoppingController controller = Get.put(ShoppingController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShoppingController>(builder: (context) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Shopping Card'),
          ),
          body: ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) =>
                buildItem(controller.products[index], index),
          ));
    });
  }

  Widget buildItem(ProductModel pro, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        key: const ValueKey(0),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          dismissible: null,
          children: [
            SlidableAction(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              onPressed: (value) async {
                controller.deleteProduct(index);
              },
              backgroundColor: const Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
            SlidableAction(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              onPressed: (context) {
                Get.to(() => DetailProduct(productModel: pro));
              },
              backgroundColor: const Color(0xFF21B7CA),
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'Edit',
            ),
          ],
        ),
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: NetworkImage(pro.image.toString()),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 2, bottom: 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          pro.name.toString(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            FloatingActionButton.small(
                              onPressed: () async {
                                controller.removeQty(pro.code!, index);
                              },
                              heroTag: pro.image.toString(),
                              tooltip: 'remove',
                              child: const Icon(Icons.remove),
                            ),
                            FloatingActionButton.small(
                              onPressed: null,
                              heroTag: pro.code.toString(),
                              tooltip: 'number',
                              child: Text(
                                pro.qty.toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            FloatingActionButton.small(
                              onPressed: () async {
                                controller.addToCard(pro);
                              },
                              heroTag: pro.name.toString(),
                              tooltip: 'add',
                              child: const Icon(Icons.add),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          '${pro.price} \$',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        // const Text(
                        //   '1.5 \$',
                        //   style: TextStyle(
                        //       fontSize: 20, fontWeight: FontWeight.bold),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
