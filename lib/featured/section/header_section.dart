import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qsunnah_final/featured/section/header_menu_section.dart';
import 'package:qsunnah_final/featured/widgets/logo.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 3,
          color: Colors.black38,
        )
      ]),
      child: Column(
        children: [
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Logo(),
                ),
                Expanded(
                  child: Text(
                    'Quotesunnah',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          SizedBox(height: 40, child: HeaderMenuSection()),
        ],
      ),
    );
  }
}
