import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  _AddProductScreenState();
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    'Welcome Vendor',
                    style: TextStyle(
                        color: Color(0xff989898),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    buildFlatButton(
                      'All items',
                      Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    buildFlatButton(
                      'Out of Stock',
                      Colors.blue,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Add New',
                    style: TextStyle(
                        color: Color(0xff161616),
                        fontSize: 22,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                ProductDetails('Category'),
                SizedBox(
                  height: 12,
                ),
                ProductDetails('Product Name'),
                SizedBox(
                  height: 12,
                ),
                ProductDetails('Price Amount'),
                SizedBox(
                  height: 12,
                ),
                ProductDetails('GST Amount'),
                SizedBox(
                  height: 12,
                ),
                ProductDetails('Delivery Charge'),
                SizedBox(
                  height: 12,
                ),
                ProductDetails('Offer(%)'),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  child: RaisedButton(
                    elevation: 5,
                    child: Text(
                      'Upload',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Color(0xff0FAAE2),
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Menu',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        FlatButton(
                          child: Text('Order'),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text('Pay-In'),
                          onPressed: () {},
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text('Profile'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFlatButton(String title, Color borderColor) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 2,
            offset: Offset(0.5, 0.5),
          ),
        ],
      ),
      child: FlatButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SizedBox(
            child: Text(title),
          ),
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  final String productDetail;

  ProductDetails(this.productDetail);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            productDetail,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF2F2F2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                borderSide: BorderSide(width: 1, color: Colors.red),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
