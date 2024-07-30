import 'dart:developer';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  static const String routeName = 'SearchScreen';
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController searchTextController;
  @override
  void initState() {
    searchTextController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  SizedBox(
                    width: 250.0,
                    child: TextField(

                      controller: searchTextController,
                      decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        labelText: 'اكتب هنا .....',
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              searchTextController.clear();
                              FocusScope.of(context).unfocus();
                            });
                          },
                          child: const Icon(
                            Icons.clear,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                      onSubmitted: (value) {
                        log(searchTextController.text);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      minimumSize: const Size(75, 50)
                    ),
                    onPressed: () {},
                    child: const Text(
                      'بحث',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 1.0,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
