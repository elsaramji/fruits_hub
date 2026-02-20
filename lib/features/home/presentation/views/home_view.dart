import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/widgets/user_home_app_bar.dart';

import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: UserHomeAppBar(userName: "AlSaramiji", userImage: ""),
      body: HomeViewBody(),
    );
  }
}
