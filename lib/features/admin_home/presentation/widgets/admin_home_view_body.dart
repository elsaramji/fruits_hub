import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/components/products_list_view.dart'
    show ProductsListView;

class AdminHomeViewBody extends StatelessWidget {
  const AdminHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: const ProductsListView());
  }
}
