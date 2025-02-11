import 'package:flutter/material.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_view_model.dart';

import '../../../core/utils/app_colors.dart';
import '../widgets/profile_page_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.vm});

  final ProfileViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: AppColors.MainColor,
          appBar: ProfilePageAppBar(vm: vm),
          body: TabBarView(
            children: [
              Text("data"),
              Text("2"),
            ],
          ),
        ),
      ),
    );
  }
}
