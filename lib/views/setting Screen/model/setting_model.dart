// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SettingModel {
  IconData? icon;
  Color? color;
  String? title;
  String? subtitle;
  SettingModel({
    this.icon,
    this.color,
    this.title,
    this.subtitle,
  });
}

List<SettingModel> listSetting = [
  SettingModel(
      icon: Icons.lock,
      color: Colors.red,
      title: 'Privacy',
      subtitle: 'System permission change'),
  SettingModel(
      icon: Icons.menu,
      color: Colors.yellow,
      title: 'General',
      subtitle: 'System permission change'),
  SettingModel(
      icon: Icons.notifications,
      color: Colors.blueAccent,
      title: 'Notification',
      subtitle: 'System permission change'),
  SettingModel(
      icon: Icons.support_agent,
      color: Colors.purpleAccent,
      title: 'Support',
      subtitle: 'System permission change'),
];
