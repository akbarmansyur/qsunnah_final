import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/config/routes/app_pages.dart';

class PrefixHeader extends StatelessWidget {
  const PrefixHeader({
    Key? key,
    required this.size,
  }) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Get.toNamed(Routes.notif);
            },
            splashColor: Colors.red,
            highlightColor: Colors.white,
            borderRadius: BorderRadius.circular(20),
            child: Icon(
              Icons.notifications,
              size: size,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Get.toNamed(Routes.profile);
            },
            splashColor: Colors.red,
            highlightColor: Colors.white,
            borderRadius: BorderRadius.circular(20),
            child: Icon(
              Icons.person,
              size: size,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Get.toNamed(Routes.search);
            },
            splashColor: Colors.red,
            highlightColor: Colors.white,
            borderRadius: BorderRadius.circular(20),
            child: Icon(
              Icons.search,
              size: size,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
