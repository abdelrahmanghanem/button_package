import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:main_button/main_button.dart';
import 'package:main_widgets/main_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = 450;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton(
                maxWidth: maxWidth,
                label: 'Submit',

                // backgroundColor: Colors.grey,
                isLoading: true,
                // isDisable: true,
                // disableColor: Colors.red,
                // labelStyle: TextStyle(fontSize: 10, color: Colors.red),
                onPressed: () => log('CustomIconButton'),
              ),
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton(
                width: 200,
                maxWidth: maxWidth,
                label: 'cancel',
                onPressed: () => log('CustomIconButton'),
              ),
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton.icon(
                width: 300,
                maxWidth: maxWidth,
                iconType: IconType.icon,
                icon: Icons.add,
                backgroundColor: Colors.red,
                label: 'test',
                onPressed: () => log('CustomIconButton'),
              ),
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton.icon(
                maxWidth: maxWidth,
                iconType: IconType.icon,
                icon: Icons.add,
                textColor: Colors.red,
                iconColor: Colors.white,
                radius: 10,
                label: 'test',
                onPressed: () => log('CustomIconButton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.hh),
        Text(title),
        SizedBox(height: 8.hh),
      ],
    );
  }
}
