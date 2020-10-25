import 'package:flutter/material.dart';

class DiscountCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 1),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discount Offers',
            style: TextStyle(color: Colors.green),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Extra 5% discount on HDFC debit/credit card. >'),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Pay with the UPI and save Extra 15% . >'),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Extra 5% discount on HDFC debit/credit card. >'),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Extra 5% discount on HDFC debit/credit card. >'),
          ),
        ],
      ),
    );
  }
}
