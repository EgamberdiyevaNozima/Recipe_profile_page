import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/client.dart';
import 'package:new_recipe_app/core/sizes.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/profile/data/repositories/profile_repository.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_page.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_view_model.dart';
import 'package:new_recipe_app/profile/presentation/widgets/profile_page_app_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(
        vm: ProfileViewModel(
          profileRepo: ProfileRepository(
            client: ApiClient(),
          ),
        ),
      ),
    );
  }
}
