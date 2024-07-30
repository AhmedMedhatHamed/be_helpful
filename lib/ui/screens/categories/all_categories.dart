import 'package:be_helpful/ui/screens/categories/accessories.dart';
import 'package:be_helpful/ui/screens/categories/appliances.dart';
import 'package:be_helpful/ui/screens/categories/clothes.dart';
import 'package:be_helpful/ui/screens/categories/educational_tools.dart';
import 'package:be_helpful/ui/screens/categories/electronics.dart';
import 'package:be_helpful/ui/screens/categories/entertainment.dart';
import 'package:be_helpful/ui/screens/categories/furniture_decoration.dart';
import 'package:be_helpful/ui/screens/categories/shoes_bags.dart';
import 'package:be_helpful/ui/screens/categories/sports_tool.dart';
import 'package:be_helpful/ui/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  static const String routeName = 'AllCategories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'كل الأصناف',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 25.0,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 18.0,
          ),
          customListTile(
              txt: 'أدوات تعليمية',
              icon: Icons.menu_book_outlined,
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EducationalToolsScreen(),
                  ),
                );
              }),
          customListTile(
            txt: 'إلكترونيات',
            icon: Icons.device_hub_outlined,
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ElectronicsScreen(),
                ),
              );
            },
          ),
          customListTile(
            txt: 'إكسسوارات',
            icon: Icons.watch,
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AccessoriesScreen(),
                ),
              );
            },
          ),
          customListTile(
            txt: 'أجهزة منزلية',
            icon: Icons.tv,
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AppliancesScreen(),
                ),
              );
            },
          ),
          customListTile(
            txt: 'ملابس',
            icon: FontAwesomeIcons.shirt,
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ClothesScreen(),
                ),
              );
            },
          ),
          customListTile(
            txt: 'ترفيه وتسلية',
            icon: Icons.sports_esports_outlined,
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EntertainmentScreen(),
                ),
              );
            },
          ),
          customListTile(
            txt: 'شنط وأحذية',
            icon: MdiIcons.shoeSneaker,
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShoesBagsScreen(),
                ),
              );
            },
          ),
          customListTile(
            txt: 'أثاث وديكور',
            icon: Icons.chair_outlined,
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FurnitureDecorationScreen(),
                ),
              );
            },
          ),
          customListTile(
            txt: 'أدوات رياضية',
            icon: Icons.sports_soccer_outlined,
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SportsToolScreens(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
