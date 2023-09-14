import 'package:fc_project/presentation/const/colors.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search:',
        fillColor: searchcolor,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: searchcolor),
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.grey.withOpacity(0.4)),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
