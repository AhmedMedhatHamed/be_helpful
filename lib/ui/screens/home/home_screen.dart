import 'package:be_helpful/domain/di/di.dart';
import 'package:be_helpful/ui/screens/home/home_view_model.dart';
import 'package:be_helpful/ui/screens/home/widgets/list_of%20posts.dart';
import 'package:be_helpful/ui/utils/app_colors.dart';
import 'package:be_helpful/ui/utils/base_request_states.dart';
import 'package:be_helpful/ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeViewModel viewModel = getIt();
  @override
  void initState() {
    viewModel.getAllPosts();
    viewModel.getCurrentUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: 50,
              color: AppColors.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'AllCategories');
                    },
                    icon: const Icon(Icons.category_outlined),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: TextFormField(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          'SearchScreen',
                        );
                      },
                      controller: TextEditingController(),
                      style: const TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(.91),
                        hintText: "بتدور علي ايه؟",
                        suffixIcon: const Icon(Icons.search),
                        hintStyle: const TextStyle(
                          color: AppColors.grey,
                          fontSize: 16,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              const BorderSide(width: 0, color: AppColors.grey),
                        ),
                        isDense: true,
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'ProfileScreen');
                    },
                    icon: const Icon(
                      Icons.person,
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder(
              bloc: viewModel.getAllPostsUseCase,
              builder: (context, state) {
                if (state is BaseRequestSuccessState) {
                  return Expanded(child: buildPostsListView(state.data));
                } else if (state is BaseRequestErrorState) {
                  return const Center(
                    child: Text(
                      Constants.defaultErrorMessage,
                    ),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
