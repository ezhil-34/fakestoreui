import 'package:flutter/material.dart';
import 'package:prac_one/pages/Products.dart';
import 'package:prac_one/pages/Alittlelife.dart';
import 'package:prac_one/pages/creatine.dart';
import 'package:prac_one/pages/laptop.dart';
import 'package:prac_one/pages/loading.dart';
import 'package:prac_one/pages/phone.dart';
import 'package:prac_one/pages/tshirt.dart';
import 'package:prac_one/pages/watch.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/Products',
  routes:{
    '/loading': (context) => Loading(),
    '/Products':(context) => Product(),
    '/Alittlelife':(context) => Little(),
    '/laptop':(context)=> Laptop(),
    '/watch':(context)=> Watch(),
    '/creatine':(context)=> Creatine(),
    '/phone':(context)=> Phone(),
    '/tshirt':(context)=> Tshirt(),

  },
));