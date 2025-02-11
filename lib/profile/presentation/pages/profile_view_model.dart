import 'package:flutter/material.dart';
import 'package:new_recipe_app/profile/data/models/profile_model.dart';
import 'package:new_recipe_app/profile/data/repositories/profile_repository.dart';

class ProfileViewModel extends ChangeNotifier {
  ProfileViewModel({required ProfileRepository profileRepo})
      : _profileRepo = profileRepo {
    load();
  }

  final ProfileRepository _profileRepo;
  ProfileModel? myProfile;

  Future load() async {
    myProfile = await _profileRepo.fetchMyProfile();
    notifyListeners();
  }
}