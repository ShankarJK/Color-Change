import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'HomepageVM.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomepageVM _instance = HomepageVM();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: _instance.scaffoldColor,
          appBar: AppBar(
            title: const Text("Color Changer"),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Observer(builder: (context) {
                  return ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll( _instance.buttonColor),
                      iconColor: MaterialStatePropertyAll(_instance.scaffoldColor)
                    ),
                      onPressed: _instance.changecolor,
                      child: const Icon(Icons.color_lens));
                }),
              ],
            ),
          ),
        );
      }
    );
  }
}
