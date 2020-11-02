import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                maxRadius: 70,
                minRadius: 50,
                child: Image.network(
                    'https://cdn0.iconfinder.com/data/icons/social-media-network-4/48/male_avatar-512.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Amit Geed',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Column(
                  children: [
                    TextField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Amit',
                        helperText: ' First Name',
                      ),
                    ),
                    TextField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Geed',
                        helperText: ' Last Name',
                      ),
                    ),
                    TextField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: 'amitgeed08@gmail.com',
                        helperText: ' Email Address',
                      ),
                    ),
                    TextField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: '794394893',
                        helperText: ' Mobile Number',
                      ),
                    ),
                    TextField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        hintText: '103, Near C-21 mall, Indore',
                        helperText: ' FirstName',
                      ),
                    ),
                    TextField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        hintText: '13B Tilak Nagar, Main Road, Indore',
                        helperText: ' FirstName',
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Edit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
