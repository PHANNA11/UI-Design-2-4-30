import 'package:flutter/material.dart';

class MenuIconModel {
  String? iconName;
  IconData? icon;
  MenuIconModel({this.icon, this.iconName});
}

List<MenuIconModel> listIcons = [
  MenuIconModel(icon: Icons.currency_exchange, iconName: 'Wallet'),
  MenuIconModel(icon: Icons.delivery_dining_outlined, iconName: 'Delivery'),
  MenuIconModel(icon: Icons.message, iconName: 'Message'),
  MenuIconModel(icon: Icons.electrical_services_sharp, iconName: 'Service')
];
