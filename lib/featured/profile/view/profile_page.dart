import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/featured/profile/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ProfilePage')),
        body: SafeArea(child: Text('ProfileController')));
  }
}
