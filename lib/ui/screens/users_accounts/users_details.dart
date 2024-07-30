import 'package:be_helpful/ui/widgets/container.dart';
import 'package:flutter/material.dart';

class UsersDetailScreen extends StatelessWidget {
  const UsersDetailScreen({super.key});

  static const String routeName = 'UsersDetailScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            'التفاصيل',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              const Row(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage(
                        'assets/images/S05E10 - frame at 31m32s.jpg'),
                  ),
                  SizedBox(width: 12.0),
                  Text(
                    'Ehab Alaa',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              const CustomContainer(
                txt1: 'رقم الهاتف:',
                txt2: '01123169695',
              ),
              const SizedBox(height: 16),
              const CustomContainer(
                txt1: 'البريد الالكتروني:',
                txt2: 'ehabala2024@yahoo',
              ),
              const SizedBox(height: 16),
              const CustomContainer(
                txt1: 'العنوان:',
                txt2: 'طه حسين، قسم المنيا، مركز المنيا',
              ),
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(250, 48.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'تـــــــــم',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
