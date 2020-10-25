import 'package:flutter/material.dart';

import 'components/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Shopee'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          ItemWidget(),
        ],
      ),
    );
  }
}
