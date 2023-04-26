import 'dart:io';

import 'package:flutter/material.dart';

class Global {
  static File? myImage;

  static String? firstName = '';
  static String? lastName = '';
  static String? phoneNumber = '';
  static String? emailAddress = '';
  static List all_items = [];
  static int list_count = 0;
  static double total_price = 0;
  static double total_count = 0;

  static List<Map> all_Categories = [
    {
      'category_image': 'assets/images/truck_type.png',
      'category_name': 'Truck Book',
    },
    {
      'category_image': 'assets/images/car_type.png',
      'category_name': 'Car Book',
    },
    {
      'category_image': 'assets/images/filght_type.png',
      'category_name': 'Flight Book',
    },
    {
      'category_image': 'assets/images/trian_type.png',
      'category_name': 'Trian Book',
    },
  ];

  static List<Map> truck = [
    {
      'image': 'assets/images/minitruck.png',
      'name': 'Mini Truck',
      'count': 0,
      'bool': true,
      'price': 5000,
    },
    {
      'image': 'assets/images/eicher.png',
      'name': 'Eicher',
      'count': 0,
      'bool': true,
      'price': 6000,
    },
    {
      'image': 'assets/images/boxtruck.jpeg',
      'name': 'Box Truck',
      'count': 0,
      'bool': true,
      'price': 9000,
    },

  ];

  static List<Map> car = [
    {
      'image': 'assets/images/hundai.png',
      'name': 'Hyundai',
      'count': 0,
      'bool': true,
      'price': 5000,
    },
    {
      'image': 'assets/images/alto.png',
      'name': 'Alto',
      'count': 0,
      'bool': true,
      'price': 2000,
    },
    {
      'image': 'assets/images/ford.jpeg',
      'name': 'Ford',
      'count': 0,
      'bool': true,
      'price': 6000,
    },

  ];

  static List<Map> flight = [
    {
      'image': 'assets/images/indigo.png',
      'name': 'Indigo Flight',
      'count': 0,
      'bool': true,
      'price': 12000,
    },
    {
      'image': 'assets/images/spicejet.png',
      'name': 'spiceJet',
      'count': 0,
      'bool': true,
      'price': 15000,
    },

  ];

  static List<Map> trian = [
    {
      'image': 'assets/images/bullet.png',
      'name': 'bullet',
      'count': 0,
      'bool': true,
      'price': 3000,
    },
    {
      'image': 'assets/images/local.jpeg',
      'name': 'Local',
      'count': 0,
      'bool': true,
      'price': 210,
    },

  ];
}
