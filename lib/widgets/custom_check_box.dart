import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final TabController tabController;
  final String text;

  const CustomCheckBox({
    super.key,
    required this.tabController,
    required this.text
    });


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (bool? newValue){}),
        Text(text, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.normal),)
      ],
    );
  }
}