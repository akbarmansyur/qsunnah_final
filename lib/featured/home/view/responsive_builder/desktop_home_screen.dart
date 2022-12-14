import 'package:flutter/material.dart';
import 'package:qsunnah_final/featured/section/content_section.dart';
import 'package:qsunnah_final/featured/section/footer_section.dart';
import 'package:qsunnah_final/featured/section/header_menu_section.dart';
import 'package:qsunnah_final/featured/section/header_section.dart';
import 'package:qsunnah_final/featured/section/sidebar_section.dart';

class DeskTopHomeScreen extends StatelessWidget {
  const DeskTopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderSection(),
        const HeaderMenuSection(),
        Expanded(
          child: Row(
            children: const [
              Expanded(child: ContentSection()),
              SizedBox(width: 300, child: SidebarSection()),
            ],
          ),
        ),
        const FooterSection(),
      ],
    );
  }
}
