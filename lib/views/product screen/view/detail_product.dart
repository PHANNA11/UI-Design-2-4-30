import 'package:first_ui/views/product%20screen/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  DetailProduct({Key? key, required this.productModel}) : super(key: key);
  ProductModel productModel;
  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  TextEditingController desController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    desController.text = widget.productModel.description.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.productModel.name.toString(),
          style: const TextStyle(fontSize: 24),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Column(children: [
        Stack(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.productModel.image.toString())),
            ),
            Positioned(
                bottom: -5,
                child: Chip(
                    backgroundColor: Colors.blueAccent,
                    label: SizedBox(
                        height: 30,
                        width: 100,
                        child: Center(
                            child: Text(widget.productModel.name.toString())))))
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: desController,
            maxLines: 10,
            minLines: 3,
            readOnly: true,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              heroTag: 'decrement',
              onPressed: () {},
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              heroTag: 'number',
              onPressed: () {},
              child: Text(
                widget.productModel.qty.toString(),
                style: const TextStyle(fontSize: 20),
              ),
            ),
            FloatingActionButton(
              heroTag: 'increment',
              onPressed: () {},
              child: const Icon(Icons.add),
            )
          ],
        )
      ]),
      floatingActionButton: CupertinoButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {},
        child: const Text('Buy now'),
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).primaryColor,
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    height: 60,
                    color: Colors.blueGrey,
                    child: Icon(
                      Icons.favorite,
                      size: 40,
                      color: widget.productModel.faverite == true
                          ? Colors.red
                          : Colors.black,
                    ))),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.shopping_cart,
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 24),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
