
import 'package:ecommerce1/home.dart';
import 'package:ecommerce1/product.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Homepage(),
          '2':(context) => Second(),
        },
      )
  );
}