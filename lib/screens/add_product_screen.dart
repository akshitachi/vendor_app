import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
                  FlatButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
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
                        child: Text('All items'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FlatButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                    onPressed: () {},
                    child: SizedBox(
                      child: Text('Out of stock'),
                    ),
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
              Row(
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
