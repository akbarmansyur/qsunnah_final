import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/featured/home/home_controller.dart';
import 'package:qsunnah_final/featured/section/header_menu_section.dart';
import 'package:qsunnah_final/featured/widgets/logo.dart';
import 'package:qsunnah_final/featured/widgets/prefix_header.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 3,
          color: Colors.black38,
        )
      ]),
      child: Column(
        children: [
          Obx(() {
            if (controller.selectedIndexMenuHeader.value == 0 ||
                controller.selectedIndexMenuHeader.value == 4) {
              return const BerandaHeader();
            } else {
              return Container();
            }
          }),
          const HeaderMenuSection(),
          Obx(() {
            if (controller.selectedIndexMenuHeader.value == 1 ||
                controller.selectedIndexMenuHeader.value == 2 ||
                controller.selectedIndexMenuHeader.value == 3) {
              return const CategoryMenuSection();
            } else {
              return Container();
            }
          })
        ],
      ),
    );
  }
}

class CategoryMenuSection extends StatelessWidget {
  const CategoryMenuSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> category = [
      'Tauhid',
      'Aqidah',
      'Manhaj',
      'Fiqh',
      'Sejarah',
      'Sejarah',
      'Sejarah',
      'Sejarah',
    ];
    final HomeController controller = Get.find();
    return SizedBox(
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              controller.updateSelectedIndexMenuHeader(0);
            },
            child: const SizedBox(
              height: 50,
              width: 50,
              child: Logo(),
            ),
          ),
          Expanded(
              child: Column(
            children: [
              PrefixHeader(
                size: 15,
              ),
              SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        controller.updateCategorySelectedIndex(index);
                      },
                      child: Obx(
                        () => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                category[index],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      controller.categorySelectedIndex.value ==
                                              index
                                          ? Colors.black
                                          : Colors.grey,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                color: controller.categorySelectedIndex.value ==
                                        index
                                    ? Colors.red
                                    : Colors.transparent,
                                height: 2,
                                width: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class BerandaHeader extends StatelessWidget {
  const BerandaHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            height: 50,
            width: 50,
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
          PrefixHeader(
            size: 20,
          ),
        ],
      ),
    );
  }
}
