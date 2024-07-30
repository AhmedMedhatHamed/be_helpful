import 'package:be_helpful/ui/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccessoriesScreen extends StatelessWidget {
  const AccessoriesScreen({super.key});

  static const String routeName = 'AccessoriesScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Text(
            'اكسسوارات',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                height: 40.0,
                thickness: 10.0,
              ),
              Center(
                child: Image.asset(
                  'assets/images/S05E10 - frame at 31m32s.jpg', //
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'كتب اجنبيه موسيقيه لو حد عايزهم',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'الوصف',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'الماركة: ',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'مجهول النوع',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'المادة: ',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'الورق',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'اللون: ',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'مختلف',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'اخري: ',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'مجموعه متنوعه من الكتب الاجنبيه الموسيقيه القديمة',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.watch,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'اكسسوارات',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      Text(
                        'المنيا',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.grey,
                      ),
                      Text(
                        ' منذ 4 ساعات',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/S05E10 - frame at 31m32s.jpg',
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Ehab Alaa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              const CustomElevatedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
