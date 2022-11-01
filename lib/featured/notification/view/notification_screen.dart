import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/featured/notification/notification_controller.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('NotificationPage')),
        body: SafeArea(child: Text('NotificationController')));
  }
}
