import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qsunnah_final/featured/section/content_section.dart';
import 'package:qsunnah_final/featured/section/header_menu_section.dart';
import 'package:qsunnah_final/featured/section/header_section.dart';
import 'package:qsunnah_final/featured/section/sidebar_section.dart';

class LandscapeHomeScreen extends StatelessWidget {
  const LandscapeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HeaderMenuSection(),
        Expanded(
          child: ContentSection(),
        ),
      ],
    );
  }
}
