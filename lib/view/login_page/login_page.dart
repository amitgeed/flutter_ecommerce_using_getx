import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/home_page.dart';
import 'package:flutter_ecommerece_using_getx/view/register_page/register_pagr.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            // margin:
            // EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(height: 30),
                    Icon(
                      Icons.shopping_bag_rounded,
                      color: kPrimaryColor,
                      size: 80,
                    ),
                    Text(
                      'SHOPEE',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        letterSpacing: 4.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        'Login Here',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                          letterSpacing: 4.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone_android,
                            color: kPrimaryColor,
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'Enter Your Mobile Number',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter mobile number';
                          } else if (value.length < 10 || value.length > 10) {
                            return 'Invalid mobile number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Your Password',
                          prefixIcon: Icon(
                            Icons.vpn_key,
                            color: kPrimaryColor,
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter password';
                          } else if (value.length < 6 || value.length > 20) {
                            return 'Please enter valid password';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Column(
                    children: [
                      FlatButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Get.offAll(HomePage());
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an Account ?'),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Get.offAll(RegisterPage());
                            },
                            child: Text(
                              'Register Here',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
